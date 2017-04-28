{% if data is not empty %}
<div id="learning_path_toc" class="scorm-list">
    <div class="scorm-body">
        <div id="inner_lp_toc" class="inner_lp_toc scrollbar-light">
            {% for item in data %}
                <div id="toc_{{ item.id }}" class="{{ item.class }}">
                    {% if item.type == 'dir' %}
                        <div class="section {{ item.css_level }}" title="{{ item.description }}">
                            {{ item.title }}
                        </div>
                    {% else %}
                        <div class="item {{ item.css_level }}" title="{{ item.description }}">
                            <a name="atoc_{{ item.id }}"></a>
                            <a class="items-list" href="#" onclick="switch_item('{{ item.current_id }}','{{ item.id }}'); return false;" >
                                {{ item.title }}
                            </a>
                        </div>
                    {% endif %}
                </div>
            {% endfor %}
        </div>
    </div>
</div>
{% endif %}
