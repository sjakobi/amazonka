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
-- Module      : Network.AWS.SageMaker.DeleteFeatureGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete the @FeatureGroup@ and any data that was written to the @OnlineStore@ of the @FeatureGroup@ . Data cannot be accessed from the @OnlineStore@ immediately after @DeleteFeatureGroup@ is called.
--
--
-- Data written into the @OfflineStore@ will not be deleted. The AWS Glue database and tables that are automatically created for your @OfflineStore@ are not deleted.
module Network.AWS.SageMaker.DeleteFeatureGroup
  ( -- * Creating a Request
    deleteFeatureGroup,
    DeleteFeatureGroup,

    -- * Request Lenses
    dFeatureGroupName,

    -- * Destructuring the Response
    deleteFeatureGroupResponse,
    DeleteFeatureGroupResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteFeatureGroup' smart constructor.
newtype DeleteFeatureGroup = DeleteFeatureGroup'
  { _dFeatureGroupName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteFeatureGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dFeatureGroupName' - The name of the @FeatureGroup@ you want to delete. The name must be unique within an AWS Region in an AWS account.
deleteFeatureGroup ::
  -- | 'dFeatureGroupName'
  Text ->
  DeleteFeatureGroup
deleteFeatureGroup pFeatureGroupName_ =
  DeleteFeatureGroup'
    { _dFeatureGroupName =
        pFeatureGroupName_
    }

-- | The name of the @FeatureGroup@ you want to delete. The name must be unique within an AWS Region in an AWS account.
dFeatureGroupName :: Lens' DeleteFeatureGroup Text
dFeatureGroupName = lens _dFeatureGroupName (\s a -> s {_dFeatureGroupName = a})

instance AWSRequest DeleteFeatureGroup where
  type
    Rs DeleteFeatureGroup =
      DeleteFeatureGroupResponse
  request = postJSON sageMaker
  response = receiveNull DeleteFeatureGroupResponse'

instance Hashable DeleteFeatureGroup

instance NFData DeleteFeatureGroup

instance ToHeaders DeleteFeatureGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DeleteFeatureGroup" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteFeatureGroup where
  toJSON DeleteFeatureGroup' {..} =
    object
      ( catMaybes
          [Just ("FeatureGroupName" .= _dFeatureGroupName)]
      )

instance ToPath DeleteFeatureGroup where
  toPath = const "/"

instance ToQuery DeleteFeatureGroup where
  toQuery = const mempty

-- | /See:/ 'deleteFeatureGroupResponse' smart constructor.
data DeleteFeatureGroupResponse = DeleteFeatureGroupResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteFeatureGroupResponse' with the minimum fields required to make a request.
deleteFeatureGroupResponse ::
  DeleteFeatureGroupResponse
deleteFeatureGroupResponse =
  DeleteFeatureGroupResponse'

instance NFData DeleteFeatureGroupResponse
