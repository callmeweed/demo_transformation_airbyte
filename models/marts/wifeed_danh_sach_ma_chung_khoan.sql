with source as (
      select * from {{ ref('stg_public__wifeed_danh_sach_ma_chung_khoan') }}
),
renamed as (
    select
        tradeplace,
        symbol,
        loaidn,
        fullname_vi,
        tradeplace+symbol

    from source
)
select * from renamed
  