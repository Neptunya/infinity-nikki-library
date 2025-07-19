# Contributor Guide WIP

## Basic Steps for Contributing A Guide
For now, guide contributions must come from community members I know.

1. Make a fork of the repo. I reccomend cloning the repo to your local machine so you can work on it in an IDE of your choosing, but nobody's stopping you from just using GitHub (I will be concerned though)  
  a. I will add a section on Git to this guide later.
2. Make a copy of [guide-template.md](https://github.com/Neptunya/infinity-nikki-library/blob/main/contributor-guide/guide-template.md) and put into [src/pages/guides](https://github.com/Neptunya/infinity-nikki-library/tree/main/src/pages/guides) and rename the copy made.
3. Fill out all the header fields except for the layout. Pay close attention to the format provided, for a complete example, see the [Styling Challenge Guide](https://github.com/Neptunya/infinity-nikki-library/blob/main/src/pages/guides/styling-challenge-scoring.md).  
  a. The [layout](https://github.com/Neptunya/infinity-nikki-library/blob/main/src/layouts/MarkdownGuideLayout.astro) is how a markdown file gets transformed into html
4. Write your guide contents using markdown, below the triple hypens ---  
  a. For images, create a new folder in [public/images/guides](https://github.com/Neptunya/infinity-nikki-library/tree/main/public/images/guides) and store your images in there. You can then link to them in your guide using `/images/guides/guide-folder/image-name`
5. Once you're done, make a pull request from your fork to the my infinity-nikki-library repo.

## Viewing Your Guide Locally to Make Sure it Works

### Prerequisites
* [nodejs](https://nodejs.org/en) installed and set up
* fork cloned to local
* basic knowledge of command line

### Steps
1. Open command line in the infinity_nikki_library directory
2. Enter `npm install` to install project dependancies (one-time step)
3. Enter `npm run dev`, after waiting a bit, you will see a link in the terminal, should be something like `http://localhost:4321/`.  
  a. If you go to the link provided by the command, you will see the homepage of the Infinity Nikki Library. Navigate to guides, verify that your guide card looks right, then navigate to your actual guide and verify that as well.
