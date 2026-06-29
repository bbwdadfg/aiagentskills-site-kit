<?php
/**
 * Plugin Name: AI Agent Skills
 * Description: Shortcodes for linking to the AI Agent Skills directory.
 * Version: 0.1.0
 * Requires at least: 6.0
 * Requires PHP: 7.4
 * Author: AI Agent Skills
 * Author URI: https://aiagentskills.net
 * License: MIT
 * Text Domain: ai-agent-skills
 */

if (!defined('ABSPATH')) {
    exit;
}

function ai_agent_skills_links_shortcode() {
    $links = array(
        'AI Agent Skills' => 'https://aiagentskills.net',
        'Skills Directory' => 'https://aiagentskills.net/skills/',
        'Submit a Skill' => 'https://aiagentskills.net/submit/',
    );

    $items = '';
    foreach ($links as $label => $url) {
        $items .= sprintf(
            '<li><a href="%s" rel="noopener">%s</a></li>',
            esc_url($url),
            esc_html($label)
        );
    }

    return '<ul class="ai-agent-skills-links">' . $items . '</ul>';
}

add_shortcode('ai_agent_skills_links', 'ai_agent_skills_links_shortcode');

