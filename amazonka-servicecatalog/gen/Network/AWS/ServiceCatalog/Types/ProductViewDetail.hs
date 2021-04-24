{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ProductViewDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProductViewDetail where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ServiceCatalog.Types.ProductViewSummary
import Network.AWS.ServiceCatalog.Types.RequestStatus

-- | Information about a product view.
--
--
--
-- /See:/ 'productViewDetail' smart constructor.
data ProductViewDetail = ProductViewDetail'
  { _pvdStatus ::
      !(Maybe RequestStatus),
    _pvdProductARN :: !(Maybe Text),
    _pvdCreatedTime :: !(Maybe POSIX),
    _pvdProductViewSummary ::
      !(Maybe ProductViewSummary)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductViewDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvdStatus' - The status of the product.     * @AVAILABLE@ - The product is ready for use.     * @CREATING@ - Product creation has started; the product is not ready for use.     * @FAILED@ - An action failed.
--
-- * 'pvdProductARN' - The ARN of the product.
--
-- * 'pvdCreatedTime' - The UTC time stamp of the creation time.
--
-- * 'pvdProductViewSummary' - Summary information about the product view.
productViewDetail ::
  ProductViewDetail
productViewDetail =
  ProductViewDetail'
    { _pvdStatus = Nothing,
      _pvdProductARN = Nothing,
      _pvdCreatedTime = Nothing,
      _pvdProductViewSummary = Nothing
    }

-- | The status of the product.     * @AVAILABLE@ - The product is ready for use.     * @CREATING@ - Product creation has started; the product is not ready for use.     * @FAILED@ - An action failed.
pvdStatus :: Lens' ProductViewDetail (Maybe RequestStatus)
pvdStatus = lens _pvdStatus (\s a -> s {_pvdStatus = a})

-- | The ARN of the product.
pvdProductARN :: Lens' ProductViewDetail (Maybe Text)
pvdProductARN = lens _pvdProductARN (\s a -> s {_pvdProductARN = a})

-- | The UTC time stamp of the creation time.
pvdCreatedTime :: Lens' ProductViewDetail (Maybe UTCTime)
pvdCreatedTime = lens _pvdCreatedTime (\s a -> s {_pvdCreatedTime = a}) . mapping _Time

-- | Summary information about the product view.
pvdProductViewSummary :: Lens' ProductViewDetail (Maybe ProductViewSummary)
pvdProductViewSummary = lens _pvdProductViewSummary (\s a -> s {_pvdProductViewSummary = a})

instance FromJSON ProductViewDetail where
  parseJSON =
    withObject
      "ProductViewDetail"
      ( \x ->
          ProductViewDetail'
            <$> (x .:? "Status")
            <*> (x .:? "ProductARN")
            <*> (x .:? "CreatedTime")
            <*> (x .:? "ProductViewSummary")
      )

instance Hashable ProductViewDetail

instance NFData ProductViewDetail
