<!DOCTYPE html>
<html lang="en">
<head>

    <!-- start: Meta -->
    <meta charset="utf-8"/>
    <title>SimpliQ - Flat & Responsive Bootstrap Admin Template</title>
    <meta name="description" content="SimpliQ - Flat & Responsive Bootstrap Admin Template."/>
    <meta name="author" content="Łukasz Holeczek"/>
    <meta name="keyword" content="SimpliQ, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina"/>
    <!-- end: Meta -->

    <!-- start: Mobile Specific -->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- end: Mobile Specific -->

    <!-- start: CSS -->
    <link href="${ctx}/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${ctx}/css/bootstrap-responsive.min.css" rel="stylesheet"/>
    <link href="${ctx}/css/style.min.css" rel="stylesheet"/>
    <link href="${ctx}/css/style-responsive.min.css" rel="stylesheet"/>
    <link href="${ctx}/css/retina.css" rel="stylesheet"/>
    <!-- end: CSS -->


    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"/>
    <link id="ie-style" href="${ctx}/css/ie.css" rel="stylesheet">
    <![endif]-->

    <!--[if IE 9]>
    <link id="ie9style" href="${ctx}/css/ie9.css" rel="stylesheet">
    <![endif]-->

    <!-- start: Favicon and Touch Icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${ctx}/ico/apple-touch-icon-144-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${ctx}/ico/apple-touch-icon-114-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${ctx}/ico/apple-touch-icon-72-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" href="${ctx}/ico/apple-touch-icon-57-precomposed.png"/>
    <link rel="shortcut icon" href="${ctx}/ico/favicon.png"/>
    <!-- end: Favicon and Touch Icons -->

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>

<body>
<!-- start: Header -->
<div class="navbar">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse"
               data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a id="main-menu-toggle" class="hidden-phone open"><i class="icon-reorder"></i></a>
            <div class="row-fluid">
                <a class="brand span2" href="index.jsp"><span>SimpliQ</span></a>
            </div>
            <!-- start: Header Menu -->
            <div class="nav-no-collapse header-nav">
                <ul class="nav pull-right">
                    <li class="dropdown hidden-phone">
                        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="icon-warning-sign"></i>
                        </a>
                        <ul class="dropdown-menu notifications">
                            <li class="dropdown-menu-title">
                                <span>You have 11 notifications</span>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="icon blue"><i class="icon-user"></i></span>
                                    <span class="message">New user registration</span>
                                    <span class="time">1 min</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="icon green"><i class="icon-comment-alt"></i></span>
                                    <span class="message">New comment</span>
                                    <span class="time">7 min</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="icon green"><i class="icon-comment-alt"></i></span>
                                    <span class="message">New comment</span>
                                    <span class="time">8 min</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="icon green"><i class="icon-comment-alt"></i></span>
                                    <span class="message">New comment</span>
                                    <span class="time">16 min</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="icon blue"><i class="icon-user"></i></span>
                                    <span class="message">New user registration</span>
                                    <span class="time">36 min</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="icon yellow"><i class="icon-shopping-cart"></i></span>
                                    <span class="message">2 items sold</span>
                                    <span class="time">1 hour</span>
                                </a>
                            </li>
                            <li class="warning">
                                <a href="#">
                                    <span class="icon red"><i class="icon-user"></i></span>
                                    <span class="message">User deleted account</span>
                                    <span class="time">2 hour</span>
                                </a>
                            </li>
                            <li class="warning">
                                <a href="#">
                                    <span class="icon red"><i class="icon-shopping-cart"></i></span>
                                    <span class="message">Transaction was canceled</span>
                                    <span class="time">6 hour</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="icon green"><i class="icon-comment-alt"></i></span>
                                    <span class="message">New comment</span>
                                    <span class="time">yesterday</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="icon blue"><i class="icon-user"></i></span>
                                    <span class="message">New user registration</span>
                                    <span class="time">yesterday</span>
                                </a>
                            </li>
                            <li class="dropdown-menu-sub-footer">
                                <a>View all notifications</a>
                            </li>
                        </ul>
                    </li>
                    <!-- start: Notifications Dropdown -->
                    <li class="dropdown hidden-phone">
                        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="icon-tasks"></i>
                        </a>
                        <ul class="dropdown-menu tasks">
                            <li>
                                <span class="dropdown-menu-title">You have 17 tasks in progress</span>
                            </li>
                            <li>
                                <a href="#">
										<span class="header">
											<span class="title">iOS Development</span>
											<span class="percent"></span>
										</span>
                                    <div class="taskProgress progressSlim progressBlue">80</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
										<span class="header">
											<span class="title">Android Development</span>
											<span class="percent"></span>
										</span>
                                    <div class="taskProgress progressSlim progressYellow">47</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
										<span class="header">
											<span class="title">Django Project For Google</span>
											<span class="percent"></span>
										</span>
                                    <div class="taskProgress progressSlim progressRed">32</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
										<span class="header">
											<span class="title">SEO for new sites</span>
											<span class="percent"></span>
										</span>
                                    <div class="taskProgress progressSlim progressGreen">63</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
										<span class="header">
											<span class="title">New blog posts</span>
											<span class="percent"></span>
										</span>
                                    <div class="taskProgress progressSlim progressPink">80</div>
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-menu-sub-footer">View all tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- end: Notifications Dropdown -->
                    <!-- start: Message Dropdown -->
                    <li class="dropdown hidden-phone">
                        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="icon-envelope"></i>
                        </a>
                        <ul class="dropdown-menu messages">
                            <li>
                                <span class="dropdown-menu-title">You have 9 messages</span>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="avatar"><img src="${ctx}/img/avatar.jpg" alt="Avatar"/></span>
                                    <span class="header">
											<span class="from">
										    	Łukasz Holeczek
										     </span>
											<span class="time">
										    	6 min
										    </span>
										</span>
                                    <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="avatar"><img src="${ctx}/img/avatar2.jpg" alt="Avatar"/></span>
                                    <span class="header">
											<span class="from">
										    	Megan Abott
										     </span>
											<span class="time">
										    	56 min
										    </span>
										</span>
                                    <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="avatar"><img src="${ctx}/img/avatar3.jpg" alt="Avatar"/></span>
                                    <span class="header">
											<span class="from">
										    	Kate Ross
										     </span>
											<span class="time">
										    	3 hours
										    </span>
										</span>
                                    <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="avatar"><img src="${ctx}/img/avatar4.jpg" alt="Avatar"/></span>
                                    <span class="header">
											<span class="from">
										    	Julie Blank
										     </span>
											<span class="time">
										    	yesterday
										    </span>
										</span>
                                    <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="avatar"><img src="${ctx}/img/avatar5.jpg" alt="Avatar"/></span>
                                    <span class="header">
											<span class="from">
										    	Jane Sanders
										     </span>
											<span class="time">
										    	Jul 25, 2012
										    </span>
										</span>
                                    <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-menu-sub-footer">View all messages</a>
                            </li>
                        </ul>
                    </li>
                    <!-- end: Message Dropdown -->
                    <li>
                        <a class="btn" href="#">
                            <i class="icon-wrench"></i>
                        </a>
                    </li>
                    <!-- start: User Dropdown -->
                    <li class="dropdown">
                        <a class="btn account dropdown-toggle" data-toggle="dropdown" href="#">
                            <div class="avatar"><img src="${ctx}/img/avatar.jpg" alt="Avatar"/></div>
                            <div class="user">
                                <span class="hello">Welcome!</span>
                                <span class="name">Łukasz Holeczek</span>
                            </div>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-menu-title">

                            </li>
                            <li><a href="#"><i class="icon-user"></i> Profile</a></li>
                            <li><a href="#"><i class="icon-cog"></i> Settings</a></li>
                            <li><a href="#"><i class="icon-envelope"></i> Messages</a></li>
                            <li><a href="login.jsp"><i class="icon-off"></i> Logout</a></li>
                        </ul>
                    </li>
                    <!-- end: User Dropdown -->
                </ul>
            </div>
            <!-- end: Header Menu -->

        </div>
    </div>
</div>
<!-- start: Header -->

<div class="container-fluid-full">
    <div class="row-fluid">

        <!-- start: Main Menu -->
        <div id="sidebar-left" class="span2">

            <div class="row-fluid actions">

                <input type="text" class="search span12" placeholder="..."/>

            </div>

            <div class="nav-collapse sidebar-nav">
                <ul class="nav nav-tabs nav-stacked main-menu">
                    <li><a href="index.jsp"><i class="icon-bar-chart"></i><span class="hidden-tablet"> Dashboard</span></a>
                    </li>
                    <li><a href="ui.jsp"><i class="icon-eye-open"></i><span
                            class="hidden-tablet"> UI Features</span></a></li>
                    <li><a href="widgets.jsp"><i class="icon-dashboard"></i><span class="hidden-tablet"> Widgets</span></a>
                    </li>
                    <li>
                        <a class="dropmenu" href="#"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> Example Pages</span>
                            <span class="label">3</span></a>
                        <ul>
                            <li><a class="submenu" href="infrastructure.jsp"><i class="icon-hdd"></i><span
                                    class="hidden-tablet"> Infrastructure</span></a></li>
                            <li><a class="submenu" href="messages.jsp"><i class="icon-envelope"></i><span
                                    class="hidden-tablet"> Messages</span></a></li>
                            <li><a class="submenu" href="tasks.jsp"><i class="icon-tasks"></i><span
                                    class="hidden-tablet"> Tasks</span></a></li>
                        </ul>
                    </li>
                    <li><a href="form.jsp"><i class="icon-edit"></i><span class="hidden-tablet"> Forms</span></a></li>
                    <li><a href="chart.jsp"><i class="icon-list-alt"></i><span class="hidden-tablet"> Charts</span></a>
                    </li>
                    <li><a href="typography.jsp"><i class="icon-font"></i><span
                            class="hidden-tablet"> Typography</span></a></li>
                    <li><a href="gallery.jsp"><i class="icon-picture"></i><span
                            class="hidden-tablet"> Gallery</span></a></li>
                    <li><a href="table.jsp"><i class="icon-align-justify"></i><span
                            class="hidden-tablet"> Tables</span></a></li>
                    <li><a href="calendar.jsp"><i class="icon-calendar"></i><span
                            class="hidden-tablet"> Calendar</span></a></li>
                    <li><a href="file-manager.jsp"><i class="icon-folder-open"></i><span class="hidden-tablet"> File Manager</span></a>
                    </li>
                    <li><a href="icon.jsp"><i class="icon-star"></i><span class="hidden-tablet"> Icons</span></a></li>
                    <li><a href="login.jsp"><i class="icon-lock"></i><span class="hidden-tablet"> Login Page</span></a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- end: Main Menu -->

        <!-- start: Content -->
        <div id="content" class="span10">


            <div class="row-fluid">

                <div class="span7 task-list">
                    <h1>Tasks</h1>

                    <div class="priority high"><span>high priority</span></div>

                    <div class="task high">
                        <div class="desc">
                            <div class="title">Lorem Ipsum</div>
                            <div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci
                                velit
                            </div>
                        </div>
                        <div class="time">
                            <div class="date">Jun 1, 2012</div>
                            <div> 1 day</div>
                        </div>
                    </div>
                    <div class="task high">
                        <div class="desc">
                            <div class="title">Lorem Ipsum</div>
                            <div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci
                                velit
                            </div>
                        </div>
                        <div class="time">
                            <div class="date">Jun 1, 2012</div>
                            <div>1 day</div>
                        </div>
                    </div>
                    <div class="task high">
                        <div class="desc">
                            <div class="title">Lorem Ipsum</div>
                            <div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci
                                velit
                            </div>
                        </div>
                        <div class="time">
                            <div class="date">Jun 1, 2012</div>
                            <div> 1 day</div>
                        </div>
                    </div>
                    <div class="task high last">
                        <div class="desc">
                            <div class="title">Lorem Ipsum</div>
                            <div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci
                                velit
                            </div>
                        </div>
                        <div class="time">
                            <div class="date">Jun 1, 2012</div>
                            <div>1 day</div>
                        </div>
                    </div>

                    <div class="priority medium"><span>medium priority</span></div>

                    <div class="task medium">
                        <div class="desc">
                            <div class="title">Lorem Ipsum</div>
                            <div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci
                                velit
                            </div>
                        </div>
                        <div class="time">
                            <div class="date">Jun 1, 2012</div>
                            <div> 1 day</div>
                        </div>
                    </div>
                    <div class="task medium last">
                        <div class="desc">
                            <div class="title">Lorem Ipsum</div>
                            <div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci
                                velit
                            </div>
                        </div>
                        <div class="time">
                            <div class="date">Jun 1, 2012</div>
                            <div> 1 day</div>
                        </div>
                    </div>

                    <div class="priority low"><span>low priority</span></div>

                    <div class="task low">
                        <div class="desc">
                            <div class="title">Lorem Ipsum</div>
                            <div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci
                                velit
                            </div>
                        </div>
                        <div class="time">
                            <div class="date">Jun 1, 2012</div>
                            <div> 1 day</div>
                        </div>
                    </div>
                    <div class="task low">
                        <div class="desc">
                            <div class="title">Lorem Ipsum</div>
                            <div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci
                                velit
                            </div>
                        </div>
                        <div class="time">
                            <div class="date">Jun 1, 2012</div>
                            <div> 1 day</div>
                        </div>
                    </div>
                    <div class="task low">
                        <div class="desc">
                            <div class="title">Lorem Ipsum</div>
                            <div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci
                                velit
                            </div>
                        </div>
                        <div class="time">
                            <div class="date">Jun 1, 2012</div>
                            <div> 1 day</div>
                        </div>
                    </div>
                    <div class="task low">
                        <div class="desc">
                            <div class="title">Lorem Ipsum</div>
                            <div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci
                                velit
                            </div>
                        </div>
                        <div class="time">
                            <div class="date">Jun 1, 2012</div>
                            <div> 1 day</div>
                        </div>
                    </div>
                    <div class="task low">
                        <div class="desc">
                            <div class="title">Lorem Ipsum</div>
                            <div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci
                                velit
                            </div>
                        </div>
                        <div class="time">
                            <div class="date">Jun 1, 2012</div>
                            <div> 1 day</div>
                        </div>
                    </div>
                    <div class="task low">
                        <div class="desc">
                            <div class="title">Lorem Ipsum</div>
                            <div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci
                                velit
                            </div>
                        </div>
                        <div class="time">
                            <div class="date">Jun 1, 2012</div>
                            <div> 1 day</div>
                        </div>
                    </div>

                    <div class="clearfix"></div>

                </div>

                <div class="span5 graph">

                    <h1>Timeline</h1>

                    <div class="timeline">

                        <div class="timeslot">

                            <div class="task">
					    		<span>
									<span class="type">appointment</span>
									<span class="details">
										Lukasz Holeczek at creativeLabs HQ
									</span>
									<span>
										remaining time
										<span class="remaining">
											3h 38m 15s
										</span>	
									</span> 
								</span>
                                <div class="arrow"></div>
                            </div>
                            <div class="icon">
                                <i class="icon-map-marker"></i>
                            </div>
                            <div class="time">
                                3:43 PM
                            </div>

                        </div>

                        <div class="clearfix"></div>

                        <div class="timeslot alt">

                            <div class="task">
					    		<span>
									<span class="type">phone call</span>
									<span class="details">
										Lukasz Holeczek
									</span>
									<span>
										remaining time
										<span class="remaining">
											3h 38m 15s
										</span>	
									</span>
								</span>
                                <div class="arrow"></div>
                            </div>
                            <div class="icon">
                                <i class="icon-phone"></i>
                            </div>
                            <div class="time">
                                3:43 PM
                            </div>

                        </div>

                        <div class="timeslot">

                            <div class="task">
					    		<span>
									<span class="type">mail</span>
									<span class="details">
										Lukasz Holeczek
									</span>
									<span>
										remaining time
										<span class="remaining">
											3h 38m 15s
										</span>	
									</span> 
								</span>
                                <div class="arrow"></div>
                            </div>
                            <div class="icon">
                                <i class="icon-envelope"></i>
                            </div>
                            <div class="time">
                                3:43 PM
                            </div>

                        </div>

                        <div class="timeslot alt">

                            <div class="task">
					    		<span>
									<span class="type">deadline</span>
									<span class="details">
										Fixed PayPal problems
									</span>
									<span>
										remaining time
										<span class="remaining">
											3h 38m 15s
										</span>	
									</span> 
								</span>
                                <div class="arrow"></div>
                            </div>
                            <div class="icon">
                                <i class="icon-calendar"></i>
                            </div>
                            <div class="time">
                                3:43 PM
                            </div>

                        </div>

                        <div class="timeslot">

                            <div class="task">
					    		<span>
									<span class="type">appointment</span>
									<span class="details">
										Lukasz Holeczek at creativeLabs HQ
									</span>
									<span>
										remaining time
										<span class="remaining">
											3h 38m 15s
										</span>	
									</span> 
								</span>
                                <div class="arrow"></div>
                            </div>
                            <div class="icon">
                                <i class="icon-map-marker"></i>
                            </div>
                            <div class="time">
                                3:43 PM
                            </div>

                        </div>

                        <div class="clearfix"></div>

                        <div class="timeslot alt">

                            <div class="task">
					    		<span>
									<span class="type">skype call</span>
									<span class="details">
										Lukasz Holeczek
									</span>
									<span>
										remaining time
										<span class="remaining">
											3h 38m 15s
										</span>	
									</span>
								</span>
                                <div class="arrow"></div>
                            </div>
                            <div class="icon">
                                <i class="icon-phone"></i>
                            </div>
                            <div class="time">
                                3:43 PM
                            </div>

                        </div>

                        <div class="timeslot">

                            <div class="task">
					    		<span>
									<span class="type">mail</span>
									<span class="details">
										Lukasz Holeczek
									</span>
									<span>
										remaining time
										<span class="remaining">
											3h 38m 15s
										</span>	
									</span> 
								</span>
                                <div class="arrow"></div>
                            </div>
                            <div class="icon">
                                <i class="icon-envelope"></i>
                            </div>
                            <div class="time">
                                3:43 PM
                            </div>

                        </div>

                        <div class="timeslot alt">

                            <div class="task">
					    		<span>
									<span class="type">project deadline</span>
									<span class="details">
										Fixed PayPal problems
									</span>
									<span>
										remaining time
										<span class="remaining">
											3h 38m 15s
										</span>	
									</span> 
								</span>
                                <div class="arrow"></div>
                            </div>
                            <div class="icon">
                                <i class="icon-calendar"></i>
                            </div>
                            <div class="time">
                                3:43 PM
                            </div>

                        </div>

                        <div class="timeslot">

                            <div class="task">
					    		<span>
									<span class="type">mail</span>
									<span class="details">
										Lukasz Holeczek
									</span>
									<span>
										remaining time
										<span class="remaining">
											3h 38m 15s
										</span>	
									</span> 
								</span>
                                <div class="arrow"></div>
                            </div>
                            <div class="icon">
                                <i class="icon-envelope"></i>
                            </div>
                            <div class="time">
                                3:43 PM
                            </div>

                        </div>

                    </div>

                </div>

            </div>


        </div>
        <!-- end: Content -->

    </div><!--/fluid-row-->

    <div class="modal hide fade" id="myModal">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">×</button>
            <h3>Settings</h3>
        </div>
        <div class="modal-body">
            <p>Here settings can be configured...</p>
        </div>
        <div class="modal-footer">
            <a href="#" class="btn" data-dismiss="modal">Close</a>
            <a href="#" class="btn btn-primary">Save changes</a>
        </div>
    </div>

    <div class="clearfix"></div>

    <footer>
        <p>
            <span style="text-align:left;float:left">Copyright &copy; 2014.Company name All rights reserved.More Templates <a
                    href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a
                    href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></span>
        </p>

    </footer>

</div><!--/.fluid-container-->

<!-- start: JavaScript-->
<script src="${ctx}/js/jquery-1.10.2.min.js"/>
<script src="${ctx}/js/jquery-migrate-1.2.1.min.js"/>
<script src="${ctx}/js/jquery-ui-1.10.3.custom.min.js"/>
<script src="${ctx}/js/jquery.ui.touch-punch.js"/>
<script src="${ctx}/js/modernizr.js"/>
<script src="${ctx}/js/bootstrap.min.js"/>
<script src="${ctx}/js/jquery.cookie.js"/>
<script src='${ctx}/js/fullcalendar.min.js'/>
<script src='${ctx}/js/jquery.dataTables.min.js'/>
<script src="${ctx}/js/excanvas.js"/>
<script src="${ctx}/js/jquery.flot.js"/>
<script src="${ctx}/js/jquery.flot.pie.js"/>
<script src="${ctx}/js/jquery.flot.stack.js"/>
<script src="${ctx}/js/jquery.flot.resize.min.js"/>
<script src="${ctx}/js/jquery.flot.time.js"/>

<script src="${ctx}/js/jquery.chosen.min.js"/>
<script src="${ctx}/js/jquery.uniform.min.js"/>
<script src="${ctx}/js/jquery.cleditor.min.js"/>
<script src="${ctx}/js/jquery.noty.js"/>
<script src="${ctx}/js/jquery.elfinder.min.js"/>
<script src="${ctx}/js/jquery.raty.min.js"/>
<script src="${ctx}/js/jquery.iphone.toggle.js"/>
<script src="${ctx}/js/jquery.uploadify-3.1.min.js"/>
<script src="${ctx}/js/jquery.gritter.min.js"/>
<script src="${ctx}/js/jquery.imagesloaded.js"/>
<script src="${ctx}/js/jquery.masonry.min.js"/>
<script src="${ctx}/js/jquery.knob.modified.js"/>
<script src="${ctx}/js/jquery.sparkline.min.js"/>
<script src="${ctx}/js/counter.min.js"/>
<script src="${ctx}/js/raphael.2.1.0.min.js"/>
<script src="${ctx}/js/justgage.1.0.1.min.js"/>
<script src="${ctx}/js/jquery.autosize.min.js"/>
<script src="${ctx}/js/retina.js"/>
<script src="${ctx}/js/jquery.placeholder.min.js"/>
<script src="${ctx}/js/wizard.min.js"/>
<script src="${ctx}/js/core.min.js"/>
<script src="${ctx}/js/charts.min.js"/>
<script src="${ctx}/js/custom.min.js"/>
<!-- end: JavaScript-->


</body>
</html>