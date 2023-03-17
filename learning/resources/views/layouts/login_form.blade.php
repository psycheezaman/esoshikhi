<form class="mb-5" method="post" action="{{ route('user-login') }}">
    @csrf

    <!-- Email -->
    <div class="form-group mb-5">
        <label for="modalSigninEmail">
            Phone Number 
        </label>
        <input type="number" name="user_id" class="form-control" id="modalSigninEmail" placeholder="Phone Number">
    </div>

    <!-- Password -->
    <div class="form-group mb-5">
        <label for="modalSigninPassword">
            Password
        </label>
        <input type="password" name="password" class="form-control" id="modalSigninPassword" placeholder="**********">
    </div>

    <div class="d-flex align-items-center mb-5 font-size-sm">
        <div class="form-check">
            <input class="form-check-input text-gray-800" type="checkbox" id="autoSizingCheck">
            <label class="form-check-label text-gray-800" for="autoSizingCheck">
                Remember me
            </label>
        </div>

        <div class="ms-auto">
            <a class="text-gray-800" data-bs-toggle="collapse" href="#collapseForgotPassword" role="button" aria-expanded="false" aria-controls="collapseForgotPassword">Forgot Password</a>
        </div>
    </div>

    <!-- Submit -->
    <button class="btn btn-block btn-primary" type="submit">
        LOGIN
    </button>
</form>
<!-- Text -->
<p class="mb-0 font-size-sm text-center">


    Don't have an account? <a class="text-underline" href="{{ route('register') }}" role="button">Sign up</a>
</p>