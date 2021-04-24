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
-- Module      : Network.AWS.SageMaker.DeleteModelPackageGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified model group.
module Network.AWS.SageMaker.DeleteModelPackageGroup
  ( -- * Creating a Request
    deleteModelPackageGroup,
    DeleteModelPackageGroup,

    -- * Request Lenses
    dModelPackageGroupName,

    -- * Destructuring the Response
    deleteModelPackageGroupResponse,
    DeleteModelPackageGroupResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteModelPackageGroup' smart constructor.
newtype DeleteModelPackageGroup = DeleteModelPackageGroup'
  { _dModelPackageGroupName ::
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

-- | Creates a value of 'DeleteModelPackageGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dModelPackageGroupName' - The name of the model group to delete.
deleteModelPackageGroup ::
  -- | 'dModelPackageGroupName'
  Text ->
  DeleteModelPackageGroup
deleteModelPackageGroup pModelPackageGroupName_ =
  DeleteModelPackageGroup'
    { _dModelPackageGroupName =
        pModelPackageGroupName_
    }

-- | The name of the model group to delete.
dModelPackageGroupName :: Lens' DeleteModelPackageGroup Text
dModelPackageGroupName = lens _dModelPackageGroupName (\s a -> s {_dModelPackageGroupName = a})

instance AWSRequest DeleteModelPackageGroup where
  type
    Rs DeleteModelPackageGroup =
      DeleteModelPackageGroupResponse
  request = postJSON sageMaker
  response =
    receiveNull DeleteModelPackageGroupResponse'

instance Hashable DeleteModelPackageGroup

instance NFData DeleteModelPackageGroup

instance ToHeaders DeleteModelPackageGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DeleteModelPackageGroup" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteModelPackageGroup where
  toJSON DeleteModelPackageGroup' {..} =
    object
      ( catMaybes
          [ Just
              ( "ModelPackageGroupName"
                  .= _dModelPackageGroupName
              )
          ]
      )

instance ToPath DeleteModelPackageGroup where
  toPath = const "/"

instance ToQuery DeleteModelPackageGroup where
  toQuery = const mempty

-- | /See:/ 'deleteModelPackageGroupResponse' smart constructor.
data DeleteModelPackageGroupResponse = DeleteModelPackageGroupResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteModelPackageGroupResponse' with the minimum fields required to make a request.
deleteModelPackageGroupResponse ::
  DeleteModelPackageGroupResponse
deleteModelPackageGroupResponse =
  DeleteModelPackageGroupResponse'

instance NFData DeleteModelPackageGroupResponse
