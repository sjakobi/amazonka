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
-- Module      : Network.AWS.ServiceCatalog.DeleteProvisionedProductPlan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified plan.
module Network.AWS.ServiceCatalog.DeleteProvisionedProductPlan
  ( -- * Creating a Request
    deleteProvisionedProductPlan,
    DeleteProvisionedProductPlan,

    -- * Request Lenses
    dpppIgnoreErrors,
    dpppAcceptLanguage,
    dpppPlanId,

    -- * Destructuring the Response
    deleteProvisionedProductPlanResponse,
    DeleteProvisionedProductPlanResponse,

    -- * Response Lenses
    dppprprsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'deleteProvisionedProductPlan' smart constructor.
data DeleteProvisionedProductPlan = DeleteProvisionedProductPlan'
  { _dpppIgnoreErrors ::
      !(Maybe Bool),
    _dpppAcceptLanguage ::
      !(Maybe Text),
    _dpppPlanId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteProvisionedProductPlan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpppIgnoreErrors' - If set to true, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources.
--
-- * 'dpppAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'dpppPlanId' - The plan identifier.
deleteProvisionedProductPlan ::
  -- | 'dpppPlanId'
  Text ->
  DeleteProvisionedProductPlan
deleteProvisionedProductPlan pPlanId_ =
  DeleteProvisionedProductPlan'
    { _dpppIgnoreErrors =
        Nothing,
      _dpppAcceptLanguage = Nothing,
      _dpppPlanId = pPlanId_
    }

-- | If set to true, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources.
dpppIgnoreErrors :: Lens' DeleteProvisionedProductPlan (Maybe Bool)
dpppIgnoreErrors = lens _dpppIgnoreErrors (\s a -> s {_dpppIgnoreErrors = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
dpppAcceptLanguage :: Lens' DeleteProvisionedProductPlan (Maybe Text)
dpppAcceptLanguage = lens _dpppAcceptLanguage (\s a -> s {_dpppAcceptLanguage = a})

-- | The plan identifier.
dpppPlanId :: Lens' DeleteProvisionedProductPlan Text
dpppPlanId = lens _dpppPlanId (\s a -> s {_dpppPlanId = a})

instance AWSRequest DeleteProvisionedProductPlan where
  type
    Rs DeleteProvisionedProductPlan =
      DeleteProvisionedProductPlanResponse
  request = postJSON serviceCatalog
  response =
    receiveEmpty
      ( \s h x ->
          DeleteProvisionedProductPlanResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteProvisionedProductPlan

instance NFData DeleteProvisionedProductPlan

instance ToHeaders DeleteProvisionedProductPlan where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.DeleteProvisionedProductPlan" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteProvisionedProductPlan where
  toJSON DeleteProvisionedProductPlan' {..} =
    object
      ( catMaybes
          [ ("IgnoreErrors" .=) <$> _dpppIgnoreErrors,
            ("AcceptLanguage" .=) <$> _dpppAcceptLanguage,
            Just ("PlanId" .= _dpppPlanId)
          ]
      )

instance ToPath DeleteProvisionedProductPlan where
  toPath = const "/"

instance ToQuery DeleteProvisionedProductPlan where
  toQuery = const mempty

-- | /See:/ 'deleteProvisionedProductPlanResponse' smart constructor.
newtype DeleteProvisionedProductPlanResponse = DeleteProvisionedProductPlanResponse'
  { _dppprprsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteProvisionedProductPlanResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dppprprsResponseStatus' - -- | The response status code.
deleteProvisionedProductPlanResponse ::
  -- | 'dppprprsResponseStatus'
  Int ->
  DeleteProvisionedProductPlanResponse
deleteProvisionedProductPlanResponse pResponseStatus_ =
  DeleteProvisionedProductPlanResponse'
    { _dppprprsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dppprprsResponseStatus :: Lens' DeleteProvisionedProductPlanResponse Int
dppprprsResponseStatus = lens _dppprprsResponseStatus (\s a -> s {_dppprprsResponseStatus = a})

instance NFData DeleteProvisionedProductPlanResponse
