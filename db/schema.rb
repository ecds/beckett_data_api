# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_220_411_190_021) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'pgcrypto'
  enable_extension 'plpgsql'

  create_table 'activities', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.integer 'activity_type', default: 1, null: false
    t.text 'notes'
    t.uuid 'work_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['work_id'], name: 'index_activities_on_work_id'
  end

  create_table 'coporates', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.integer 'coporate_type', default: 0, null: false
    t.integer 'legacy_id'
    t.string 'authorized_name', default: '', null: false
    t.text 'alternate_names', default: [], array: true
    t.text 'description', default: ''
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'events', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.integer 'event_type', default: 0, null: false
    t.text 'event_name', default: '', null: false
    t.text 'description', default: ''
    t.string 'place', default: ''
    t.date 'date_attended'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'letter_recipients', force: :cascade do |t|
    t.uuid 'letter_id'
    t.uuid 'coporate_id'
    t.uuid 'personal_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['coporate_id'], name: 'index_letter_recipients_on_coporate_id'
    t.index ['letter_id'], name: 'index_letter_recipients_on_letter_id'
    t.index ['personal_id'], name: 'index_letter_recipients_on_personal_id'
  end

  create_table 'letters', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.integer 'legacy_id'
    t.date 'date_sent'
    t.text 'address'
    t.text 'physical_description'
    t.text 'content'
    t.boolean 'verified', default: false, null: false
    t.integer 'language', default: 198, null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'locations', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'name'
    t.text 'description'
    t.text 'alternate_names', default: [], array: true
    t.text 'links', default: [], array: true
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'mentions', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'activity_id'
    t.uuid 'coporate_id'
    t.uuid 'event_id'
    t.uuid 'letter_id'
    t.uuid 'location_id'
    t.uuid 'personal_id'
    t.uuid 'work_id'
    t.boolean 'significant', default: false
    t.integer 'mention_type'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['activity_id'], name: 'index_mentions_on_activity_id'
    t.index ['coporate_id'], name: 'index_mentions_on_coporate_id'
    t.index ['event_id'], name: 'index_mentions_on_event_id'
    t.index ['letter_id'], name: 'index_mentions_on_letter_id'
    t.index ['location_id'], name: 'index_mentions_on_location_id'
    t.index ['personal_id'], name: 'index_mentions_on_personal_id'
    t.index ['work_id'], name: 'index_mentions_on_work_id'
  end

  create_table 'personals', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'authorized_name', default: '', null: false
    t.integer 'legacy_id'
    t.date 'birth_date'
    t.date 'death_date'
    t.text 'description', default: ''
    t.text 'alternate_names', default: [], array: true
    t.text 'links', default: [], array: true
    t.text 'images', default: [], array: true
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'work_creators', force: :cascade do |t|
    t.uuid 'work_id'
    t.uuid 'personal_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['personal_id'], name: 'index_work_creators_on_personal_id'
    t.index ['work_id'], name: 'index_work_creators_on_work_id'
  end

  create_table 'works', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.integer 'work_type', default: 0, null: false
    t.integer 'language', default: 198, null: false
    t.string 'title', default: '', null: false
    t.text 'alternate_titles', default: [], array: true
    t.text 'translator'
    t.text 'publication_info'
    t.boolean 'published'
    t.text 'description'
    t.text 'performed_by'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
