<?php

namespace App\Http\Controllers\Api;

use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use App\Repositories\GoogleAuth;
use Jerry\JWT\JWT;
use Tymon\JWTAuth\Facades\JWTAuth;


class AuthController extends Controller
{
    protected $google;

    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct(GoogleAuth $google)
    {
        $this->google = $google;
        $this->middleware('auth:api', ['except' => ['login', 'register']]);
    }

    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login()
    {
        $tokenVerify = $this->google->tokeninfo(request('token'));

        if($this->google->code400){
            return "El token no es valido";
        }

        if ($tokenVerify->exp < time() || $tokenVerify->aud != env('GOOGLE_ID_CLIENT')) {
            return "El token no es valido";
        }

        $credentials = [
            'email'=>$tokenVerify->email,
            'password'=>'password',
            ];

        $customClaim = ['datos' => User::where('email', $tokenVerify->email)];

        
        $token = null;
        //if (! $token = auth()->attempt($credentials, $user)) {
            if (! $token = JWTAuth::attempt($credentials, $customClaim)) {
                return response()->json(['error' => 'Unauthorized'], 401);
            }
            
            $user = User::where('email', $tokenVerify->email)->first();
            
        $payload = [
            "name" => $user->name,
            "email" => $user->email,
            ];
        $token = JWT::encode($payload);

        return $this->respondWithToken($token);

        
        //return response()->json(compact('token'));
    }

    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function me()
    {
        return response()->json(auth()->user());
    }

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        auth()->logout();

        return response()->json(['message' => 'Successfully logged out']);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        return $this->respondWithToken(auth()->refresh());
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60
        ]);
    }
    
    public function register(Request $request){
        $validator = Validator::make($request->all(),[
            'name' => 'required|min:6',
            'email' => 'required|string|email|max:100|unique:users',
            'password' => 'required|string|min:8',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors()->toJson(), 400);
        }

        $user = User::create(array_merge(
            $validator->validate(),
            ['password' => bcrypt($request->password)]
        ));
        return response()->json([
            'message' => 'Usuario creado satisfactoriamente',
            'user' => $user
        ], 201);
        
    }
}