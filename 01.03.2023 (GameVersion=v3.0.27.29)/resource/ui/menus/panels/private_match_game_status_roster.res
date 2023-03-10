"resource/ui/menus/panels/private_match_status_roster.res"
{
	PanelFrame
	{
		ControlName				Label
		xpos					0
		ypos					0
		wide					%100
		tall					%100
		labelText				""
		bgcolor_override		"255 16 16 8"
		visible					0
		paintbackground			1
		proportionalToParent    1
	}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	TeamFrame
    {
        ControlName				RuiPanel
        classname               "TeamFrameTiny"
        xpos					0
        ypos                    0
        zpos                    6
        wide				    322
        tall					196

        visible					1
        enabled 				1
        scaleImage				1
        rui                     "ui/teams_scoreboard_frame_tiny.rpak"
        zpos                    00


        pin_to_sibling				PanelFrame
        pin_corner_to_sibling		TOP_LEFT
        pin_to_sibling_corner		TOP_LEFT
    }
    TeamHeader
    {
        ControlName             RuiButton

        xpos                    0
        ypos                    0
        zpos                    5

        wide                    322
        tall                    48
        rui                     "ui/teams_score_header_tiny.rpak"
        rightClickEvents        1
        doubleClickEvents       1

        pin_to_sibling          PanelFrame
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   TOP_LEFT

        visible                 1
    }

    TeamPlayerRoster
    {
        ControlName             GridButtonListPanel

        xpos                    16
        ypos                    0

        pin_to_sibling          TeamHeader
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT

        columns                 1
        rows                    3
        buttonSpacing           2
        scrollbarSpacing        2
        scrollbarOnLeft         1
        //tabPosition             1
        selectOnDpadNav         1

        ButtonSettings
        {
            rui                     "ui/private_match_game_status_player.rpak"
            clipRui                 1
            wide                    322
            tall                    48
            cursorVelocityModifier  0.7
            //rightClickEvents        1
            //doubleClickEvents       1
            //middleClickEvents       1
            sound_focus             "UI_Menu_Focus_Small"
            sound_accept            ""
            sound_deny              ""
        }
    }
}