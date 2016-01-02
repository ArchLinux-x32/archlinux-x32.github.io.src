# please pardon me for this too simple code, it is an example on how to use this workflow framework
React = require('react/addons')
Router = require('react-router')
{ Route, RouteHandler, Link } = Router
LocalStorageUtil = require('../utils/LocalStorage')
# TransitionGroup = React.addons.CSSTransitionGroup

LOCAL_STORAGE_PREFIX = 'wff' 

LocalStorageUtil.init(LOCAL_STORAGE_PREFIX)

module.exports = React.createClass
  # mixins: [ Router.State ]
  render: ->
    <div>
        <header className="header">
            <div className="logo-container">
                <img className="icon-i-roy logo center-block" src="images/logo.png" />
                <div className="banner">
                    <p dangerouslySetInnerHTML={{__html: 'The x32 ABI (libx32) packages<br />for ArchLinux <span>_</span>'}}></p>
                </div>
                <div className="nav" activeClassName="active">
                    <Link to="about">
                        About
                    </Link>
                    <Link to="examples" activeClassName="active">
                        Build
                    </Link>
                </div>
            </div>
        </header>
        <div className="container">
            <section className="page-content">
                <RouteHandler />
            </section>
        </div>
        <footer>
            <div className="content">
                I'm Fantix King, a Python developer. <a href="https://www.linkedin.com/in/fantix">Hire me</a>
                <div className="large">~♡ⓛⓞⓥⓔ♡~</div>
            </div>
        </footer>
    </div>
