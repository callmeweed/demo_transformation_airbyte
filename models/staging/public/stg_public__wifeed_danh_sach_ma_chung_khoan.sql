with source as (
      select * from {{ source('public', 'wifeed_danh_sach_ma_chung_khoan') }}
),
renamed as (
    select
        {{ adapter.quote("san") }}::text as tradeplace,
        {{ adapter.quote("code") }}::text as symbol,
        {{ adapter.quote("loaidn") }}::int,
        {{ adapter.quote("fullname_vi") }}::text

    from source
)
select * from renamed
  