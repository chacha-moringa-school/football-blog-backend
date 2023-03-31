# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Blog.create(
    [
        {
            image_url: "https://ichef.bbci.co.uk/onesport/cps/624/cpsprodpb/03BB/production/_129055900_whatsubject.jpg",

            title: "Antonio Conte Leaves Tottenham by Mutual Consent",

            news: "Antonio Conte has left his position as Tottenham manager by mutual consent, the Premier League club said Sunday.

            The Italian's assistant, Cristian Stellini, has been appointed acting head coach for the rest of the season.
            
            The announcement comes just over a week after Conte delivered a post-match rant in which he accused the team's players of being 'selfish' and also took aim at the club's ownership.
            
            'We have 10 Premier League games remaining and we have a fight on our hands for a Champions League place,' Tottenham chairman Daniel Levy said Sunday. 'We all need to pull together. Everyone has to step up to ensure the highest possible finish for our Club and amazing, loyal supporters.'",

            user_id: 1
        },
        {
            image_url: "https://cdn.vox-cdn.com/thumbor/09al-JTnKGfO55MRecK4dFk8NzU=/0x0:4450x2714/1200x800/filters:focal(1422x1154:2134x1866)/cdn.vox-cdn.com/uploads/chorus_image/image/72114320/1249399364.0.jpg",

            title: "Tuchel Appointed as New Bayern's Head Coach",

            news: "Previously in charge at Mainz, Borussia Dortmund, Paris Saint-Germain and Chelsea, Tuchel arrives at the Allianz Arena on a contract that runs until June 30, 2025. He will lead his first training session at Säbener Straße on Monday, ahead of the following weekend's Der Klassiker meeting against Dortmund.

            Nagelsmann departs with his side in second place in the Bundesliga standings, one point behind leaders BVB, while Bayern are also in the UEFA Champions League quarter-finals.
            
            Speaking after the club announced the decision, Bayern CEO Oliver Kahn said: “When we signed Julian Nagelsmann for FC Bayern in the summer of 2021, we were convinced we would work with him on a long-term basis - and that was the goal of all of us right up to the end. Julian shares our aspiration to play successful and attractive football. But now we have come to the conclusion that the quality in our squad - despite the Bundesliga title last year - has come to the fore less and less often.",

            user_id: 1
        },
        {
            image_url: "https://images.indianexpress.com/2023/03/Untitled-design-69-1.jpg?w=640",

            title: "Ronaldo Nets Twice Against Luxembourg",

            news: "It was a clinical display from the visitors as they had a four-goal lead at the break before adding two more late on

            Portugal made easy work of Luxembourg as they ran out 6-0 winners in their European Championship qualifying match on Sunday.
            
            Cristiano Ronaldo was at the double in a clinical first-half display for Roberto Martinez's men, while Joao Felix and Bernardo Silva were also among the goals.
            
            The visitors had the victory wrapped up by half-time and although Luxembourg saw more of the ball over the final 45 minutes, there was little they could do to have a chance of getting back in the match.",
                
            user_id: 1
        },
    ]
)