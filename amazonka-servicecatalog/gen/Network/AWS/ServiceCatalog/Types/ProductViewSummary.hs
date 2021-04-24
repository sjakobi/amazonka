{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ProductViewSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProductViewSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ServiceCatalog.Types.ProductType

-- | Summary information about a product view.
--
--
--
-- /See:/ 'productViewSummary' smart constructor.
data ProductViewSummary = ProductViewSummary'
  { _pvsDistributor ::
      !(Maybe Text),
    _pvsId :: !(Maybe Text),
    _pvsName :: !(Maybe Text),
    _pvsHasDefaultPath ::
      !(Maybe Bool),
    _pvsShortDescription ::
      !(Maybe Text),
    _pvsSupportURL :: !(Maybe Text),
    _pvsSupportDescription ::
      !(Maybe Text),
    _pvsOwner :: !(Maybe Text),
    _pvsProductId :: !(Maybe Text),
    _pvsSupportEmail :: !(Maybe Text),
    _pvsType :: !(Maybe ProductType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductViewSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvsDistributor' - The distributor of the product. Contact the product administrator for the significance of this value.
--
-- * 'pvsId' - The product view identifier.
--
-- * 'pvsName' - The name of the product.
--
-- * 'pvsHasDefaultPath' - Indicates whether the product has a default path. If the product does not have a default path, call 'ListLaunchPaths' to disambiguate between paths. Otherwise, 'ListLaunchPaths' is not required, and the output of 'ProductViewSummary' can be used directly with 'DescribeProvisioningParameters' .
--
-- * 'pvsShortDescription' - Short description of the product.
--
-- * 'pvsSupportURL' - The URL information to obtain support for this Product.
--
-- * 'pvsSupportDescription' - The description of the support for this Product.
--
-- * 'pvsOwner' - The owner of the product. Contact the product administrator for the significance of this value.
--
-- * 'pvsProductId' - The product identifier.
--
-- * 'pvsSupportEmail' - The email contact information to obtain support for this Product.
--
-- * 'pvsType' - The product type. Contact the product administrator for the significance of this value. If this value is @MARKETPLACE@ , the product was created by AWS Marketplace.
productViewSummary ::
  ProductViewSummary
productViewSummary =
  ProductViewSummary'
    { _pvsDistributor = Nothing,
      _pvsId = Nothing,
      _pvsName = Nothing,
      _pvsHasDefaultPath = Nothing,
      _pvsShortDescription = Nothing,
      _pvsSupportURL = Nothing,
      _pvsSupportDescription = Nothing,
      _pvsOwner = Nothing,
      _pvsProductId = Nothing,
      _pvsSupportEmail = Nothing,
      _pvsType = Nothing
    }

-- | The distributor of the product. Contact the product administrator for the significance of this value.
pvsDistributor :: Lens' ProductViewSummary (Maybe Text)
pvsDistributor = lens _pvsDistributor (\s a -> s {_pvsDistributor = a})

-- | The product view identifier.
pvsId :: Lens' ProductViewSummary (Maybe Text)
pvsId = lens _pvsId (\s a -> s {_pvsId = a})

-- | The name of the product.
pvsName :: Lens' ProductViewSummary (Maybe Text)
pvsName = lens _pvsName (\s a -> s {_pvsName = a})

-- | Indicates whether the product has a default path. If the product does not have a default path, call 'ListLaunchPaths' to disambiguate between paths. Otherwise, 'ListLaunchPaths' is not required, and the output of 'ProductViewSummary' can be used directly with 'DescribeProvisioningParameters' .
pvsHasDefaultPath :: Lens' ProductViewSummary (Maybe Bool)
pvsHasDefaultPath = lens _pvsHasDefaultPath (\s a -> s {_pvsHasDefaultPath = a})

-- | Short description of the product.
pvsShortDescription :: Lens' ProductViewSummary (Maybe Text)
pvsShortDescription = lens _pvsShortDescription (\s a -> s {_pvsShortDescription = a})

-- | The URL information to obtain support for this Product.
pvsSupportURL :: Lens' ProductViewSummary (Maybe Text)
pvsSupportURL = lens _pvsSupportURL (\s a -> s {_pvsSupportURL = a})

-- | The description of the support for this Product.
pvsSupportDescription :: Lens' ProductViewSummary (Maybe Text)
pvsSupportDescription = lens _pvsSupportDescription (\s a -> s {_pvsSupportDescription = a})

-- | The owner of the product. Contact the product administrator for the significance of this value.
pvsOwner :: Lens' ProductViewSummary (Maybe Text)
pvsOwner = lens _pvsOwner (\s a -> s {_pvsOwner = a})

-- | The product identifier.
pvsProductId :: Lens' ProductViewSummary (Maybe Text)
pvsProductId = lens _pvsProductId (\s a -> s {_pvsProductId = a})

-- | The email contact information to obtain support for this Product.
pvsSupportEmail :: Lens' ProductViewSummary (Maybe Text)
pvsSupportEmail = lens _pvsSupportEmail (\s a -> s {_pvsSupportEmail = a})

-- | The product type. Contact the product administrator for the significance of this value. If this value is @MARKETPLACE@ , the product was created by AWS Marketplace.
pvsType :: Lens' ProductViewSummary (Maybe ProductType)
pvsType = lens _pvsType (\s a -> s {_pvsType = a})

instance FromJSON ProductViewSummary where
  parseJSON =
    withObject
      "ProductViewSummary"
      ( \x ->
          ProductViewSummary'
            <$> (x .:? "Distributor")
            <*> (x .:? "Id")
            <*> (x .:? "Name")
            <*> (x .:? "HasDefaultPath")
            <*> (x .:? "ShortDescription")
            <*> (x .:? "SupportUrl")
            <*> (x .:? "SupportDescription")
            <*> (x .:? "Owner")
            <*> (x .:? "ProductId")
            <*> (x .:? "SupportEmail")
            <*> (x .:? "Type")
      )

instance Hashable ProductViewSummary

instance NFData ProductViewSummary
