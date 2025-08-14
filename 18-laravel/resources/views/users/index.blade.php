@extends('layouts.app')
@section('title', 'Users Module')

@section('content')
    @include('layouts.navbar')
    <main
        class="bg-[url('/images/gestion1.431Z.png')] bg-no-repeat bg-cover bg-center w-full min-h-screen flex flex-col justify-center items-center">
        <div
            class="bg-[#0006] w-full max-w-7xl mx-auto text-white p-10 rounded-lg flex flex-col justify-center items-center">
            <h1 class="text-2xl flex gap-2 items-center pb-2 border-b-2">
                <svg xmlns="http://www.w3.org/2000/svg" class="size-12" fill="#fff" viewBox="0 0 256 256">
                    <path
                        d="M244.8,150.4a8,8,0,0,1-11.2-1.6A51.6,51.6,0,0,0,192,128a8,8,0,0,1-7.37-4.89,8,8,0,0,1,0-6.22A8,8,0,0,1,192,112a24,24,0,1,0-23.24-30,8,8,0,1,1-15.5-4A40,40,0,1,1,219,117.51a67.94,67.94,0,0,1,27.43,21.68A8,8,0,0,1,244.8,150.4ZM190.92,212a8,8,0,1,1-13.84,8,57,57,0,0,0-98.16,0,8,8,0,1,1-13.84-8,72.06,72.06,0,0,1,33.74-29.92,48,48,0,1,1,58.36,0A72.06,72.06,0,0,1,190.92,212ZM128,176a32,32,0,1,0-32-32A32,32,0,0,0,128,176ZM72,120a8,8,0,0,0-8-8A24,24,0,1,1,87.24,82a8,8,0,1,0,15.5-4A40,40,0,1,0,37,117.51,67.94,67.94,0,0,0,9.6,139.19a8,8,0,1,0,12.8,9.61A51.6,51.6,0,0,1,64,128,8,8,0,0,0,72,120Z">
                    </path>
                </svg>
                Users Module:
            </h1>
            <div class="join mt-4">
                <a href="{{ url('users/create') }}" class="btn badge-ghost hover:bg-[blue] hover:text-[white]  join-item">
                    <svg xmlns="http://www.w3.org/2000/svg" class="size-6" fill="currentColor" viewBox="0 0 256 256">
                        <path
                            d="M168,56a8,8,0,0,1,8-8h16V32a8,8,0,0,1,16,0V48h16a8,8,0,0,1,0,16H208V80a8,8,0,0,1-16,0V64H176A8,8,0,0,1,168,56Zm62.56,54.68a103.92,103.92,0,1,1-85.24-85.24,8,8,0,0,1-2.64,15.78A88.07,88.07,0,0,0,40,128a87.62,87.62,0,0,0,22.24,58.41A79.66,79.66,0,0,1,98.3,157.66a48,48,0,1,1,59.4,0,79.66,79.66,0,0,1,36.06,28.75A87.62,87.62,0,0,0,216,128a88.85,88.85,0,0,0-1.22-14.68,8,8,0,1,1,15.78-2.64ZM128,152a32,32,0,1,0-32-32A32,32,0,0,0,128,152Zm0,64a87.57,87.57,0,0,0,53.92-18.5,64,64,0,0,0-107.84,0A87.57,87.57,0,0,0,128,216Z">
                        </path>
                    </svg>
                    Add User
                </a>
                <a href="{{ url('export/users/pdf') }}" class="btn badge-ghost hover:bg-[red] hover:text-[white] join-item">
                    <svg xmlns="http://www.w3.org/2000/svg" class="size-6" fill="currentColor" viewBox="0 0 256 256">
                        <path
                            d="M224,152a8,8,0,0,1-8,8H192v16h16a8,8,0,0,1,0,16H192v16a8,8,0,0,1-16,0V152a8,8,0,0,1,8-8h32A8,8,0,0,1,224,152ZM92,172a28,28,0,0,1-28,28H56v8a8,8,0,0,1-16,0V152a8,8,0,0,1,8-8H64A28,28,0,0,1,92,172Zm-16,0a12,12,0,0,0-12-12H56v24h8A12,12,0,0,0,76,172Zm88,8a36,36,0,0,1-36,36H112a8,8,0,0,1-8-8V152a8,8,0,0,1,8-8h16A36,36,0,0,1,164,180Zm-16,0a20,20,0,0,0-20-20h-8v40h8A20,20,0,0,0,148,180ZM40,112V40A16,16,0,0,1,56,24h96a8,8,0,0,1,5.66,2.34l56,56A8,8,0,0,1,216,88v24a8,8,0,0,1-16,0V96H152a8,8,0,0,1-8-8V40H56v72a8,8,0,0,1-16,0ZM160,80h28.69L160,51.31Z">
                        </path>
                    </svg>
                    Export PDF
                </a>
                <a href="{{ url('export/users/excel') }}"
                    class="btn badge-ghost hover:bg-[green] hover:text-[white] join-item">
                    <svg xmlns="http://www.w3.org/2000/svg" class="size-6" fill="currentColor" viewBox="0 0 256 256">
                        <path
                            d="M200,24H72A16,16,0,0,0,56,40V64H40A16,16,0,0,0,24,80v96a16,16,0,0,0,16,16H56v24a16,16,0,0,0,16,16H200a16,16,0,0,0,16-16V40A16,16,0,0,0,200,24Zm-40,80h40v48H160Zm40-16H160V80a16,16,0,0,0-16-16V40h56ZM72,40h56V64H72ZM40,80H144v79.83c0,.06,0,.11,0,.17s0,.11,0,.17V176H40ZM72,192h56v24H72Zm72,24V192a16,16,0,0,0,16-16v-8h40v48ZM65.85,146.88,81.59,128,65.85,109.12a8,8,0,0,1,12.3-10.24L92,115.5l13.85-16.62a8,8,0,1,1,12.3,10.24L102.41,128l15.74,18.88a8,8,0,0,1-12.3,10.24L92,140.5,78.15,157.12a8,8,0,0,1-12.3-10.24Z">
                        </path>
                    </svg>
                    Export Excel
                </a>
                <input class="outline-0 rounded-tr-sm rounded-br-sm indent-2 bg-black/50" type="search"
                    placeholder="Search..." id="qsearch" name="qsearch">
            </div>
            <div class="overflow-x-auto mt-8 rounded-box border w-full flex justify-center">
                <table class="table table-xs bg-[#0006]">
                    <!-- head -->
                    <thead class="text-white">
                        <tr>
                            <th>FullName</th>
                            <th class="hidden sm:table-cell">Role</th>
                            <th class="hidden md:table-cell">Email</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($users as $user)
                            <tr>
                                <td>
                                    <div class="flex items-center gap-3">
                                        <div class="avatar">
                                            <div class="mask mask-squircle h-12 w-12">
                                                <img src="{{ asset('images/' . $user->photo) }}" alt="Photo" />
                                            </div>
                                        </div>
                                        <div>
                                            <div class="font-bold">{{ $user->fullname }}</div>
                                            <div class="text-sm opacity-50">{{ $user->document }}</div>
                                        </div>
                                    </div>
                                </td>
                                <td class="hidden sm:table-cell">
                                    <span class="badge badge-ghost badge-sm">{{ $user->role }}</span>
                                </td>
                                <td class="hidden sm:table-cell">{{ $user->email }}</td>
                                <th>
                                    <a href="{{ url('users/' . $user->id) }}"
                                        class="btn btn-ghost hover:bg-[transparent] btn-xs">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="size-5" fill="#FFFFFFFF"
                                            viewBox="0 0 256 256">
                                            <path
                                                d="M229.66,218.34l-50.07-50.06a88.11,88.11,0,1,0-11.31,11.31l50.06,50.07a8,8,0,0,0,11.32-11.32ZM40,112a72,72,0,1,1,72,72A72.08,72.08,0,0,1,40,112Z">
                                            </path>
                                        </svg>
                                    </a>
                                    <a href="{{ url('users/' . $user->id . '/edit') }}"
                                        class="btn btn-ghost hover:bg-[transparent] btn-xs">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="size-5" fill="#E5FF00FF"
                                            viewBox="0 0 256 256">
                                            <path
                                                d="M227.32,73.37,182.63,28.69a16,16,0,0,0-22.63,0L36.69,152A15.86,15.86,0,0,0,32,163.31V208a16,16,0,0,0,16,16H92.69A15.86,15.86,0,0,0,104,219.31l83.67-83.66,3.48,13.9-36.8,36.79a8,8,0,0,0,11.31,11.32l40-40a8,8,0,0,0,2.11-7.6l-6.9-27.61L227.32,96A16,16,0,0,0,227.32,73.37ZM48,179.31,76.69,208H48Zm48,25.38L51.31,160,136,75.31,180.69,120Zm96-96L147.32,64l24-24L216,84.69Z">
                                            </path>
                                        </svg>
                                    </a>
                                    <a href="javascript:;" class="btn btn-ghost hover:bg-[transparent] btn-xs">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="size-5" fill="#FF0000FF"
                                            viewBox="0 0 256 256">
                                            <path
                                                d="M216,48H176V40a24,24,0,0,0-24-24H104A24,24,0,0,0,80,40v8H40a8,8,0,0,0,0,16h8V208a16,16,0,0,0,16,16H192a16,16,0,0,0,16-16V64h8a8,8,0,0,0,0-16ZM96,40a8,8,0,0,1,8-8h48a8,8,0,0,1,8,8v8H96Zm96,168H64V64H192ZM112,104v64a8,8,0,0,1-16,0V104a8,8,0,0,1,16,0Zm48,0v64a8,8,0,0,1-16,0V104a8,8,0,0,1,16,0Z">
                                            </path>
                                        </svg>
                                    </a>
                                    <form class="hidden" method="post" action="{{ url('users/' . $user->id) }}">
                                        @csrf
                                        @method('delete')
                                    </form>
                                </th>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
    </main>
@endsection

@section('js')
    <script>
        $(document).ready(function() {
            @if (session('message'))
            Swal.fire({
                position: "top-end",
                icon: "success",
                title: "Congratulations!",
                text: "{{ session('message') }}",
                showConfirmButton: true,
                confirmButtonColor: "#154869"
            })
            @endif
        })
    </script>
@endsection

