import { LightningElement } from 'lwc';

export default class P2cNonPrimitivesParent1 extends LightningElement {

    //Array of objects
    carouselData = [
        {
            src : "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/3c81bf4c-53df-47dd-bd2d-0015c90567ba/dfti94r-a26c3e54-21d5-46e8-bf6e-15d9a95d5bbd.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzNjODFiZjRjLTUzZGYtNDdkZC1iZDJkLTAwMTVjOTA1NjdiYVwvZGZ0aTk0ci1hMjZjM2U1NC0yMWQ1LTQ2ZTgtYmY2ZS0xNWQ5YTk1ZDViYmQuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.392BNQ8B6D-GlnU-GtahkmOX-YnRBN_VuIDUQjhwU_o",
            header : "First Rabbit",
            description : "First card description.",
            alternativetext : "First card accessible description.",
            href : "https://www.softinnovas.com"
        },
        {
            src : "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/3c81bf4c-53df-47dd-bd2d-0015c90567ba/dfti94n-a9ed9fca-57f5-4f12-aba8-3b761160a27f.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzNjODFiZjRjLTUzZGYtNDdkZC1iZDJkLTAwMTVjOTA1NjdiYVwvZGZ0aTk0bi1hOWVkOWZjYS01N2Y1LTRmMTItYWJhOC0zYjc2MTE2MGEyN2YuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.dAS97osYJzYC-wHbq7RjZbxQk1krrUbpd8kO0GJfbnI",
            header : "Second Rabbit",
            description : "Second card description.",
            alternativetext : "Second card accessible description.",
            href : "javascript:void(0);"
        },
        {
            src : "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/3c81bf4c-53df-47dd-bd2d-0015c90567ba/dfti94g-ac657799-3490-4d16-ad5b-5fac290bda28.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzNjODFiZjRjLTUzZGYtNDdkZC1iZDJkLTAwMTVjOTA1NjdiYVwvZGZ0aTk0Zy1hYzY1Nzc5OS0zNDkwLTRkMTYtYWQ1Yi01ZmFjMjkwYmRhMjguanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.UtZ6BHTwUAYGDZfcEHuOVJVCCNJdyt7cIneEWdWV7OI",
            header : "Third Rabbit",
            description : "Third card description.",
            alternativetext : "Third card accessible description.",
            href : "javascript:void(0);"
        }
    ]


}