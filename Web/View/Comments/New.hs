module Web.View.Comments.New where
import Web.View.Prelude

data NewView = NewView { comment :: Comment
                       , post    :: Post 
                       }

instance View NewView where
    html NewView { .. } = [hsx|
        {breadcrumb}
        <h1>New Comment <q> {get #title post } </q></h1>
        {renderForm comment}
    |]
        where
            breadcrumb = renderBreadcrumb
                [ breadcrumbLink "Comments" CommentsAction
                , breadcrumbText "New Comment"
                ]

renderForm :: Comment -> Html
renderForm comment = formFor comment [hsx|
    {(textField #author)}
    {(textField #body)}
    {(hiddenField #postId)}
    {submitButton}

|]