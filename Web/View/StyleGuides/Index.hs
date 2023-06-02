module Web.View.StyleGuides.Index where
import Web.View.Prelude
import Web.Element.Types
import Web.Element.ElementBuild
import Web.Element.ElementWrap

data IndexView = IndexView

instance View IndexView where
    html IndexView = [hsx|
    <div class="flex flex-col gap-6">
      <div class="flex flex-wrap mt-10 gap-6"> {card}</div>
      <div class="flex flex-wrap justify-center mt-10 gap-6">
        {mconcat $ replicate 10 card}
      </div>
    </div>
    |]
        |> wrapVerticalSpacing AlignNone
        |> wrapContainerWide

card :: Html
card = [hsx|
<div class="flex w-80 flex-col items-start justify-start rounded-lg bg-white shadow-lg divide-y divide-solid">
  <div class="flex w-full flex-col items-center justify-start space-y-10 p-8">
    <div class="h-32 w-32">
      <img class="h-full w-full object-cover rounded-full" src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="Your Image">
    </div>

    <div class="flex w-full flex-col items-center justify-center space-y-2">
      <p class="w-full text-center text-sm font-medium leading-tight text-gray-900">Jane Cooper</p>
      <p class="w-full text-center text-sm leading-tight text-gray-500">Paradigm Representative</p>
      <div class="inline-flex items-center justify-center rounded-full bg-green-100 px-2 py-1">
        <p class="text-center text-xs font-medium leading-none text-green-800">Admin</p>
      </div>
    </div>
  </div>

  <div class="inline-flex w-full items-center justify-start divide-x divide-solid">
    <div class="flex flex-1 cursor-pointer flex-row items-center justify-center space-x-1 text-sm font-medium text-gray-700 p-4 hover:bg-gray-100">
      <div>
        <svg class="h-4 w-4 text-gray-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor">
          <path d="M1.5 8.67v8.58a3 3 0 003 3h15a3 3 0 003-3V8.67l-8.928 5.493a3 3 0 01-3.144 0L1.5 8.67z" />
          <path d="M22.5 6.908V6.75a3 3 0 00-3-3h-15a3 3 0 00-3 3v.158l9.714 5.978a1.5 1.5 0 001.572 0L22.5 6.908z" />
        </svg>
      </div>
      <div>Email</div>
    </div>

    <div class="flex flex-1 cursor-pointer flex-row items-center justify-center space-x-1 text-sm font-medium text-gray-700 p-4 hover:bg-gray-100">
      <div>
        <svg class="h-4 w-4 text-gray-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor">
          <path fill-rule="evenodd" d="M1.5 4.5a3 3 0 013-3h1.372c.86 0 1.61.586 1.819 1.42l1.105 4.423a1.875 1.875 0 01-.694 1.955l-1.293.97c-.135.101-.164.249-.126.352a11.285 11.285 0 006.697 6.697c.103.038.25.009.352-.126l.97-1.293a1.875 1.875 0 011.955-.694l4.423 1.105c.834.209 1.42.959 1.42 1.82V19.5a3 3 0 01-3 3h-2.25C8.552 22.5 1.5 15.448 1.5 6.75V4.5z" clip-rule="evenodd" />
        </svg>
      </div>
      <div>Call</div>
    </div>
  </div>
</div>
|]
