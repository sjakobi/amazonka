{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.DescribeProductAsAdmin
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the specified product. This operation is run with administrator access.
module Network.AWS.ServiceCatalog.DescribeProductAsAdmin
  ( -- * Creating a Request
    describeProductAsAdmin,
    DescribeProductAsAdmin,

    -- * Request Lenses
    dpaaId,
    dpaaName,
    dpaaSourcePortfolioId,
    dpaaAcceptLanguage,

    -- * Destructuring the Response
    describeProductAsAdminResponse,
    DescribeProductAsAdminResponse,

    -- * Response Lenses
    dpaarrsProductViewDetail,
    dpaarrsTags,
    dpaarrsBudgets,
    dpaarrsProvisioningArtifactSummaries,
    dpaarrsTagOptions,
    dpaarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'describeProductAsAdmin' smart constructor.
data DescribeProductAsAdmin = DescribeProductAsAdmin'
  { _dpaaId ::
      !(Maybe Text),
    _dpaaName ::
      !(Maybe Text),
    _dpaaSourcePortfolioId ::
      !(Maybe Text),
    _dpaaAcceptLanguage ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeProductAsAdmin' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpaaId' - The product identifier.
--
-- * 'dpaaName' - The product name.
--
-- * 'dpaaSourcePortfolioId' - The unique identifier of the shared portfolio that the specified product is associated with. You can provide this parameter to retrieve the shared TagOptions associated with the product. If this parameter is provided and if TagOptions sharing is enabled in the portfolio share, the API returns both local and shared TagOptions associated with the product. Otherwise only local TagOptions will be returned.
--
-- * 'dpaaAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
describeProductAsAdmin ::
  DescribeProductAsAdmin
describeProductAsAdmin =
  DescribeProductAsAdmin'
    { _dpaaId = Nothing,
      _dpaaName = Nothing,
      _dpaaSourcePortfolioId = Nothing,
      _dpaaAcceptLanguage = Nothing
    }

-- | The product identifier.
dpaaId :: Lens' DescribeProductAsAdmin (Maybe Text)
dpaaId = lens _dpaaId (\s a -> s {_dpaaId = a})

-- | The product name.
dpaaName :: Lens' DescribeProductAsAdmin (Maybe Text)
dpaaName = lens _dpaaName (\s a -> s {_dpaaName = a})

-- | The unique identifier of the shared portfolio that the specified product is associated with. You can provide this parameter to retrieve the shared TagOptions associated with the product. If this parameter is provided and if TagOptions sharing is enabled in the portfolio share, the API returns both local and shared TagOptions associated with the product. Otherwise only local TagOptions will be returned.
dpaaSourcePortfolioId :: Lens' DescribeProductAsAdmin (Maybe Text)
dpaaSourcePortfolioId = lens _dpaaSourcePortfolioId (\s a -> s {_dpaaSourcePortfolioId = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
dpaaAcceptLanguage :: Lens' DescribeProductAsAdmin (Maybe Text)
dpaaAcceptLanguage = lens _dpaaAcceptLanguage (\s a -> s {_dpaaAcceptLanguage = a})

instance AWSRequest DescribeProductAsAdmin where
  type
    Rs DescribeProductAsAdmin =
      DescribeProductAsAdminResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          DescribeProductAsAdminResponse'
            <$> (x .?> "ProductViewDetail")
            <*> (x .?> "Tags" .!@ mempty)
            <*> (x .?> "Budgets" .!@ mempty)
            <*> (x .?> "ProvisioningArtifactSummaries" .!@ mempty)
            <*> (x .?> "TagOptions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeProductAsAdmin

instance NFData DescribeProductAsAdmin

instance ToHeaders DescribeProductAsAdmin where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.DescribeProductAsAdmin" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeProductAsAdmin where
  toJSON DescribeProductAsAdmin' {..} =
    object
      ( catMaybes
          [ ("Id" .=) <$> _dpaaId,
            ("Name" .=) <$> _dpaaName,
            ("SourcePortfolioId" .=) <$> _dpaaSourcePortfolioId,
            ("AcceptLanguage" .=) <$> _dpaaAcceptLanguage
          ]
      )

instance ToPath DescribeProductAsAdmin where
  toPath = const "/"

instance ToQuery DescribeProductAsAdmin where
  toQuery = const mempty

-- | /See:/ 'describeProductAsAdminResponse' smart constructor.
data DescribeProductAsAdminResponse = DescribeProductAsAdminResponse'
  { _dpaarrsProductViewDetail ::
      !( Maybe
           ProductViewDetail
       ),
    _dpaarrsTags ::
      !( Maybe
           [Tag]
       ),
    _dpaarrsBudgets ::
      !( Maybe
           [BudgetDetail]
       ),
    _dpaarrsProvisioningArtifactSummaries ::
      !( Maybe
           [ProvisioningArtifactSummary]
       ),
    _dpaarrsTagOptions ::
      !( Maybe
           [TagOptionDetail]
       ),
    _dpaarrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeProductAsAdminResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpaarrsProductViewDetail' - Information about the product view.
--
-- * 'dpaarrsTags' - Information about the tags associated with the product.
--
-- * 'dpaarrsBudgets' - Information about the associated budgets.
--
-- * 'dpaarrsProvisioningArtifactSummaries' - Information about the provisioning artifacts (also known as versions) for the specified product.
--
-- * 'dpaarrsTagOptions' - Information about the TagOptions associated with the product.
--
-- * 'dpaarrsResponseStatus' - -- | The response status code.
describeProductAsAdminResponse ::
  -- | 'dpaarrsResponseStatus'
  Int ->
  DescribeProductAsAdminResponse
describeProductAsAdminResponse pResponseStatus_ =
  DescribeProductAsAdminResponse'
    { _dpaarrsProductViewDetail =
        Nothing,
      _dpaarrsTags = Nothing,
      _dpaarrsBudgets = Nothing,
      _dpaarrsProvisioningArtifactSummaries =
        Nothing,
      _dpaarrsTagOptions = Nothing,
      _dpaarrsResponseStatus = pResponseStatus_
    }

-- | Information about the product view.
dpaarrsProductViewDetail :: Lens' DescribeProductAsAdminResponse (Maybe ProductViewDetail)
dpaarrsProductViewDetail = lens _dpaarrsProductViewDetail (\s a -> s {_dpaarrsProductViewDetail = a})

-- | Information about the tags associated with the product.
dpaarrsTags :: Lens' DescribeProductAsAdminResponse [Tag]
dpaarrsTags = lens _dpaarrsTags (\s a -> s {_dpaarrsTags = a}) . _Default . _Coerce

-- | Information about the associated budgets.
dpaarrsBudgets :: Lens' DescribeProductAsAdminResponse [BudgetDetail]
dpaarrsBudgets = lens _dpaarrsBudgets (\s a -> s {_dpaarrsBudgets = a}) . _Default . _Coerce

-- | Information about the provisioning artifacts (also known as versions) for the specified product.
dpaarrsProvisioningArtifactSummaries :: Lens' DescribeProductAsAdminResponse [ProvisioningArtifactSummary]
dpaarrsProvisioningArtifactSummaries = lens _dpaarrsProvisioningArtifactSummaries (\s a -> s {_dpaarrsProvisioningArtifactSummaries = a}) . _Default . _Coerce

-- | Information about the TagOptions associated with the product.
dpaarrsTagOptions :: Lens' DescribeProductAsAdminResponse [TagOptionDetail]
dpaarrsTagOptions = lens _dpaarrsTagOptions (\s a -> s {_dpaarrsTagOptions = a}) . _Default . _Coerce

-- | -- | The response status code.
dpaarrsResponseStatus :: Lens' DescribeProductAsAdminResponse Int
dpaarrsResponseStatus = lens _dpaarrsResponseStatus (\s a -> s {_dpaarrsResponseStatus = a})

instance NFData DescribeProductAsAdminResponse
