{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.PortfolioDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.PortfolioDetail where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a portfolio.
--
--
--
-- /See:/ 'portfolioDetail' smart constructor.
data PortfolioDetail = PortfolioDetail'
  { _pdProviderName ::
      !(Maybe Text),
    _pdId :: !(Maybe Text),
    _pdARN :: !(Maybe Text),
    _pdCreatedTime :: !(Maybe POSIX),
    _pdDescription :: !(Maybe Text),
    _pdDisplayName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PortfolioDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdProviderName' - The name of the portfolio provider.
--
-- * 'pdId' - The portfolio identifier.
--
-- * 'pdARN' - The ARN assigned to the portfolio.
--
-- * 'pdCreatedTime' - The UTC time stamp of the creation time.
--
-- * 'pdDescription' - The description of the portfolio.
--
-- * 'pdDisplayName' - The name to use for display purposes.
portfolioDetail ::
  PortfolioDetail
portfolioDetail =
  PortfolioDetail'
    { _pdProviderName = Nothing,
      _pdId = Nothing,
      _pdARN = Nothing,
      _pdCreatedTime = Nothing,
      _pdDescription = Nothing,
      _pdDisplayName = Nothing
    }

-- | The name of the portfolio provider.
pdProviderName :: Lens' PortfolioDetail (Maybe Text)
pdProviderName = lens _pdProviderName (\s a -> s {_pdProviderName = a})

-- | The portfolio identifier.
pdId :: Lens' PortfolioDetail (Maybe Text)
pdId = lens _pdId (\s a -> s {_pdId = a})

-- | The ARN assigned to the portfolio.
pdARN :: Lens' PortfolioDetail (Maybe Text)
pdARN = lens _pdARN (\s a -> s {_pdARN = a})

-- | The UTC time stamp of the creation time.
pdCreatedTime :: Lens' PortfolioDetail (Maybe UTCTime)
pdCreatedTime = lens _pdCreatedTime (\s a -> s {_pdCreatedTime = a}) . mapping _Time

-- | The description of the portfolio.
pdDescription :: Lens' PortfolioDetail (Maybe Text)
pdDescription = lens _pdDescription (\s a -> s {_pdDescription = a})

-- | The name to use for display purposes.
pdDisplayName :: Lens' PortfolioDetail (Maybe Text)
pdDisplayName = lens _pdDisplayName (\s a -> s {_pdDisplayName = a})

instance FromJSON PortfolioDetail where
  parseJSON =
    withObject
      "PortfolioDetail"
      ( \x ->
          PortfolioDetail'
            <$> (x .:? "ProviderName")
            <*> (x .:? "Id")
            <*> (x .:? "ARN")
            <*> (x .:? "CreatedTime")
            <*> (x .:? "Description")
            <*> (x .:? "DisplayName")
      )

instance Hashable PortfolioDetail

instance NFData PortfolioDetail
