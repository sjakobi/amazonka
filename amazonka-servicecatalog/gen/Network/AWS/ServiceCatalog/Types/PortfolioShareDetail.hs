{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.PortfolioShareDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.PortfolioShareDetail where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ServiceCatalog.Types.DescribePortfolioShareType

-- | Information about the portfolio share.
--
--
--
-- /See:/ 'portfolioShareDetail' smart constructor.
data PortfolioShareDetail = PortfolioShareDetail'
  { _psdShareTagOptions ::
      !(Maybe Bool),
    _psdPrincipalId ::
      !(Maybe Text),
    _psdAccepted :: !(Maybe Bool),
    _psdType ::
      !( Maybe
           DescribePortfolioShareType
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PortfolioShareDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdShareTagOptions' - Indicates whether TagOptions sharing is enabled or disabled for the portfolio share.
--
-- * 'psdPrincipalId' - The identifier of the recipient entity that received the portfolio share. The recipient entities can be one of the following:  1. An external account. 2. An organziation member account. 3. An organzational unit (OU). 4. The organization itself. (This shares with every account in the organization).
--
-- * 'psdAccepted' - Indicates whether the shared portfolio is imported by the recipient account. If the recipient is in an organization node, the share is automatically imported, and the field is always set to true.
--
-- * 'psdType' - The type of the portfolio share.
portfolioShareDetail ::
  PortfolioShareDetail
portfolioShareDetail =
  PortfolioShareDetail'
    { _psdShareTagOptions =
        Nothing,
      _psdPrincipalId = Nothing,
      _psdAccepted = Nothing,
      _psdType = Nothing
    }

-- | Indicates whether TagOptions sharing is enabled or disabled for the portfolio share.
psdShareTagOptions :: Lens' PortfolioShareDetail (Maybe Bool)
psdShareTagOptions = lens _psdShareTagOptions (\s a -> s {_psdShareTagOptions = a})

-- | The identifier of the recipient entity that received the portfolio share. The recipient entities can be one of the following:  1. An external account. 2. An organziation member account. 3. An organzational unit (OU). 4. The organization itself. (This shares with every account in the organization).
psdPrincipalId :: Lens' PortfolioShareDetail (Maybe Text)
psdPrincipalId = lens _psdPrincipalId (\s a -> s {_psdPrincipalId = a})

-- | Indicates whether the shared portfolio is imported by the recipient account. If the recipient is in an organization node, the share is automatically imported, and the field is always set to true.
psdAccepted :: Lens' PortfolioShareDetail (Maybe Bool)
psdAccepted = lens _psdAccepted (\s a -> s {_psdAccepted = a})

-- | The type of the portfolio share.
psdType :: Lens' PortfolioShareDetail (Maybe DescribePortfolioShareType)
psdType = lens _psdType (\s a -> s {_psdType = a})

instance FromJSON PortfolioShareDetail where
  parseJSON =
    withObject
      "PortfolioShareDetail"
      ( \x ->
          PortfolioShareDetail'
            <$> (x .:? "ShareTagOptions")
            <*> (x .:? "PrincipalId")
            <*> (x .:? "Accepted")
            <*> (x .:? "Type")
      )

instance Hashable PortfolioShareDetail

instance NFData PortfolioShareDetail
