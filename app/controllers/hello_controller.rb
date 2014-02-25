class HelloController < ApplicationController

  # ###################################################
  # ################ SZABLONY WIDOKÓW #################

  # layout "product", except: [:index, :rss]

  # ###################################################
  # ############## MAIN PAGE DISPATCHER ###############

  def index

    # -------------------------------------------------

    # -- Development switches
    @menu_mode  = 'static_top'  # wersja top-menu (manual override) :-)
    @test_mode  = true          # dodatkowe opcje w top-menu
    @debug_mode = !true         # lokalny tryb debugowania (dotyczy view)

    # -------------------------------------------------

    @action= params[:id]
    @status= params[:stat]
    @time1 = Time.now
    @secs  = @time1.strftime('%s')

    @cyear = @time1.strftime('%Y')

    # -------------------------------------------------

    @a = %w{ ants bees cats dogs elks }


    # render text: "OK", layout: true                   # działa
    # render js: "alert('Hello Rails');", layout: true  # nie działa
    # render status: 500
    # render status: :forbidden

    # flash.now[:alert] = "Your book was not found"     # nie działa

    # head :bad_request
    # head :not_found

    # -------------------------------------------------

    # -- login logic --
    @inputUserId_display   = "style=""display:none;"""
    @inputUsername_display = "style=""display:block;"""

  end

  # ###################################################

  def welcome
    @time = Time.now

	@a = [ 'ant', 'bee', 'cat', 'dog', 'elk' ]

	@a = %w{ ants bees cats dogs elks }

	def say_goodnight(name)
		"Good night, #{name.capitalize}"
	end

	# ###################################################

	@txt = "Ala";

	@txt += " " + @a[1];

	for elem in @a
	  @txt += ", " + elem
	end
	@txt += @txt / "(pusto)" rescue "."

	@txt += say_goodnight('pa')

	#<p>Elementy tablicy:  for elem in @a puts elem {done}</p>

	# ###################################################

	inst_section = {
		cello:		'string',
		clarinet:	'woodwind',
		drum:		'percussion',
		oboe:		'woodwind',
		trumpet:	'brass',
		violin:		'string'
	}

	#for elem in inst_section
	#  @txt += ", " + elem:id
	#end

	#puts "Ala ma Asa."

	# ###################################################

  end

  def goodbye

  end
end
