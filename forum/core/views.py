from django.contrib.auth import login, authenticate
from django.contrib.auth.forms import UserCreationForm
from django.shortcuts import render, redirect

def signup(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            raw_password = form.cleaned_data.get('password1')
            user = authenticate(username=username, password=raw_password)
            login(request, user)
            return redirect('/forum')
    else:
        form = UserCreationForm()

    return render(request, 'core/signup.html', {'form': form})


def testing(request):
    # return render(request, 'machina/873gfhbjsdv.html')
    return render(request, 'nothing.html')