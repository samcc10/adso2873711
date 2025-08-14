@extends('layouts.app')
@section('title', 'Users Module')

@section('content')
    @include('layouts.navbar')
    <main
        class="bg-[url('/images/gestion1.431Z.png')] bg-no-repeat bg-cover bg-center w-full min-h-screen flex flex-col justify-center items-center pt-24">
        <div
            class="bg-[#0006] w-full max-w-7xl mx-auto text-white p-10 rounded-lg flex flex-col justify-center items-center">

            <h1 class="text-2xl flex gap-2 items-center pb-2 border-b-2">
                <svg xmlns="http://www.w3.org/2000/svg" class="size-9" fill="#fff" viewBox="0 0 256 256">
                    <path
                        d="M168,56a8,8,0,0,1,8-8h16V32a8,8,0,0,1,16,0V48h16a8,8,0,0,1,0,16H208V80a8,8,0,0,1-16,0V64H176A8,8,0,0,1,168,56Zm62.56,54.68a103.92,103.92,0,1,1-85.24-85.24,8,8,0,0,1-2.64,15.78A88.07,88.07,0,0,0,40,128a87.62,87.62,0,0,0,22.24,58.41A79.66,79.66,0,0,1,98.3,157.66a48,48,0,1,1,59.4,0,79.66,79.66,0,0,1,36.06,28.75A87.62,87.62,0,0,0,216,128a88.85,88.85,0,0,0-1.22-14.68,8,8,0,1,1,15.78-2.64ZM128,152a32,32,0,1,0-32-32A32,32,0,0,0,128,152Zm0,64a87.57,87.57,0,0,0,53.92-18.5,64,64,0,0,0-107.84,0A87.57,87.57,0,0,0,128,216Z">
                    </path>
                </svg>
                Add User
            </h1>

            <div class="breadcrumbs text-sm mt-6">
                <ul>
                    <li>
                        <a href="{{ url('dashboard') }}">
                            <svg xmlns="http://www.w3.org/2000/svg" class="size-5" fill="#fff" viewBox="0 0 256 256">
                                <path
                                    d="M104,40H56A16,16,0,0,0,40,56v48a16,16,0,0,0,16,16h48a16,16,0,0,0,16-16V56A16,16,0,0,0,104,40Zm0,64H56V56h48v48Zm96-64H152a16,16,0,0,0-16,16v48a16,16,0,0,0,16,16h48a16,16,0,0,0,16-16V56A16,16,0,0,0,200,40Zm0,64H152V56h48v48Zm-96,32H56a16,16,0,0,0-16,16v48a16,16,0,0,0,16,16h48a16,16,0,0,0,16-16V152A16,16,0,0,0,104,136Zm0,64H56V152h48v48Zm96-64H152a16,16,0,0,0-16,16v48a16,16,0,0,0,16,16h48a16,16,0,0,0,16-16V152A16,16,0,0,0,200,136Zm0,64H152V152h48v48Z">
                                </path>
                            </svg>
                            Dashboard
                        </a>
                    </li>
                    <li>
                        <a href="{{ url('users') }}">
                            <svg xmlns="http://www.w3.org/2000/svg" class="size-5" fill="#fff" viewBox="0 0 256 256">
                                <path
                                    d="M244.8,150.4a8,8,0,0,1-11.2-1.6A51.6,51.6,0,0,0,192,128a8,8,0,0,1-7.37-4.89,8,8,0,0,1,0-6.22A8,8,0,0,1,192,112a24,24,0,1,0-23.24-30,8,8,0,1,1-15.5-4A40,40,0,1,1,219,117.51a67.94,67.94,0,0,1,27.43,21.68A8,8,0,0,1,244.8,150.4ZM190.92,212a8,8,0,1,1-13.84,8,57,57,0,0,0-98.16,0,8,8,0,1,1-13.84-8,72.06,72.06,0,0,1,33.74-29.92,48,48,0,1,1,58.36,0A72.06,72.06,0,0,1,190.92,212ZM128,176a32,32,0,1,0-32-32A32,32,0,0,0,128,176ZM72,120a8,8,0,0,0-8-8A24,24,0,1,1,87.24,82a8,8,0,1,0,15.5-4A40,40,0,1,0,37,117.51,67.94,67.94,0,0,0,9.6,139.19a8,8,0,1,0,12.8,9.61A51.6,51.6,0,0,1,64,128,8,8,0,0,0,72,120Z">
                                </path>
                            </svg>
                            Users Module
                        </a>
                    </li>
                    <li>
                        <span class="inline-flex items-center gap-2">
                            <svg xmlns="http://www.w3.org/2000/svg" class="size-5" fill="currentColor"
                                viewBox="0 0 256 256">
                                <path
                                    d="M168,56a8,8,0,0,1,8-8h16V32a8,8,0,0,1,16,0V48h16a8,8,0,0,1,0,16H208V80a8,8,0,0,1-16,0V64H176A8,8,0,0,1,168,56Zm62.56,54.68a103.92,103.92,0,1,1-85.24-85.24,8,8,0,0,1-2.64,15.78A88.07,88.07,0,0,0,40,128a87.62,87.62,0,0,0,22.24,58.41A79.66,79.66,0,0,1,98.3,157.66a48,48,0,1,1,59.4,0,79.66,79.66,0,0,1,36.06,28.75A87.62,87.62,0,0,0,216,128a88.85,88.85,0,0,0-1.22-14.68,8,8,0,1,1,15.78-2.64ZM128,152a32,32,0,1,0-32-32A32,32,0,0,0,128,152Zm0,64a87.57,87.57,0,0,0,53.92-18.5,64,64,0,0,0-107.84,0A87.57,87.57,0,0,0,128,216Z">
                                </path>
                            </svg>
                            Add User
                        </span>
                    </li>
                </ul>
            </div>

            {{-- Avatar --}}
            <form action="{{ url('users') }}" class="my-4 flex flex-col gap-2" method="POST"
                enctype="multipart/form-data">
                @csrf
                <div class="avatar mt-6 flex flex-col items-center gap-2">
                    <div id="upload" class="mask mask-squircle w-48 cursor-pointer hover:scale-110 transition-transform">
                        <img id="preview" src="{{ asset('images/no-photo.png') }}" />
                    </div>
                    <small class="font-bold text-gray-500 flex items-center gap-1">
                        <svg xmlns="http://www.w3.org/2000/svg" class="size-6" fill="currentColor" viewBox="0 0 256 256">
                            <path
                                d="M248,128a87.34,87.34,0,0,1-17.6,52.81,8,8,0,1,1-12.8-9.62A71.34,71.34,0,0,0,232,128a72,72,0,0,0-144,0,8,8,0,0,1-16,0,88,88,0,0,1,3.29-23.88C74.2,104,73.1,104,72,104a48,48,0,0,0,0,96H96a8,8,0,0,1,0,16H72A64,64,0,1,1,81.29,88.68,88,88,0,0,1,248,128Zm-69.66,42.34L160,188.69V128a8,8,0,0,0-16,0v60.69l-18.34-18.35a8,8,0,0,0-11.32,11.32l32,32a8,8,0,0,0,11.32,0l32-32a8,8,0,0,0-11.32-11.32Z">
                            </path>
                        </svg>
                        Upload Photo
                    </small>
                </div>
                <input type="file" name="photo" id="photo" class="hidden" accept="image/*">
                <div class="mt-4">
                    <label class="mt-4">Document:</label>
                    <input type="text" name="document" placeholder="750001002"
                        class="w-full input bg-[transparent] border-white" value="{{ old('document') }}" />
                </div>
                <div>
                    <label class="mt-4">Full Name:</label>
                    <input type="text" name="fullname" placeholder="John Wick"
                        class="w-full input bg-[transparent] border-white" value="{{ old('fullname') }}" />
                </div>
                <div>
                    <label class="mt-4">Gender:</label>
                    <select name="gender" class="w-full select bg-[transparent] border-white">
                        <option value="">Select Gender...</option>
                        <option value="Female" @if (old('gender') == 'Female') selected @endif>Female</option>
                        <option value="Male" @if (old('gender') == 'Male') selected @endif>Male</option>
                    </select>
                </div>
                <div>
                    <label class="mt-4">Birthdate:</label>
                    <input type="date" name="birthdate" placeholder="2000-10-08"
                        class="w-full input bg-[transparent] border-white" value="{{ old('birthdate') }}" />
                </div>
                <div>
                    <label class="mt-4">Phone Number:</label>
                    <input type="text" name="phone" placeholder="3201231234"
                        class="w-full input bg-[transparent] border-white" value="{{ old('phone') }}" />
                </div>
                <div>
                    <label class="mt-4">Email:</label>
                    <input type="text" name="email" placeholder="jonhw@mail.com"
                        class="w-full input bg-[transparent] border-white" value="{{ old('email') }}" />
                </div>
                <div>
                    <label class="mt-4">Password:</label>
                    <input type="password" name="password" placeholder="secret"
                        class="w-full input bg-[transparent] border-white" />
                </div>
                <div>
                    <label class="mt-4">Password Confirmation:</label>
                    <input type="password" name="password_confirmation" placeholder="secret"
                        class="w-full input bg-[transparent] border-white" />
                </div>
                <div>
                    <button class="btn btn-light w-full">
                        Register
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="size-6">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M13.5 4.5 21 12m0 0-7.5 7.5M21 12H3" />
                        </svg>
                    </button>
            </form>
        </div>
    </main>
@endsection

@section('js')
    <script>
        $(document).ready(function() {
            $('#upload').click(function(e) {
                $('#photo').click()
            })

            $('#photo').change(function(e) {
                $('#preview').attr('src', window.URL.createObjectURL(this.files[0]))
            })
        })

        @if (count($errors->all()) > 0)
            @php $content = '<ul class="flex flex-col gap-1 items-center">' @endphp
            @foreach ($errors->all() as $msg)
                @php $content .= '<li class="badge badge-error text-xs">'.$msg.'</li>' @endphp
            @endforeach
            @php $content .= '</ul>' @endphp
            Swal.fire({
                position: "top-end",
                icon: "error",
                title: "Something went wrong",
                html: `@php echo $content @endphp`,
                showConfirmButton: true,
                confirmButtonColor: "#154869"
            })
        @endif
    </script>
@endsection
