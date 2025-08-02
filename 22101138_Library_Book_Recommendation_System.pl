likes(nafisa, fantasy).
level(nafisa, beginner).

likes(ovi, mystery).
level(ovi, intermediate).

likes(priom, mystery).
level(priom, advanced).

book('The Hobbit', fantasy, beginner).
book('Sherlock Holmes', detective, intermediate).
book('Murder on the Orient Express', crime, advanced).
book('Coraline', dark_fantasy, beginner).
book('The Name of the Wind', magic_fantasy, intermediate).

subgenre(fantasy, dark_fantasy).
subgenre(dark_fantasy, magic_fantasy).

subgenre(mystery, detective).
subgenre(mystery, crime).

recommend(User, Book) :-
    likes(User, Genre),
    level(User, Level),
    book(Book, Genre, Level).

recommend_recursive(User, Book) :-
    likes(User, Genre),
    level(User, Level),
    find_book_recursive(Genre, Level, Book).

find_book_recursive(Genre, Level, Book) :-
    book(Book, Genre, Level).

find_book_recursive(Genre, Level, Book) :-
    subgenre(Genre, Sub),
    find_book_recursive(Sub, Level, Book).



