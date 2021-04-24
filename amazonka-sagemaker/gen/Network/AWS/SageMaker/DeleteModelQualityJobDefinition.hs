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
-- Module      : Network.AWS.SageMaker.DeleteModelQualityJobDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the secified model quality monitoring job definition.
module Network.AWS.SageMaker.DeleteModelQualityJobDefinition
  ( -- * Creating a Request
    deleteModelQualityJobDefinition,
    DeleteModelQualityJobDefinition,

    -- * Request Lenses
    delJobDefinitionName,

    -- * Destructuring the Response
    deleteModelQualityJobDefinitionResponse,
    DeleteModelQualityJobDefinitionResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteModelQualityJobDefinition' smart constructor.
newtype DeleteModelQualityJobDefinition = DeleteModelQualityJobDefinition'
  { _delJobDefinitionName ::
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

-- | Creates a value of 'DeleteModelQualityJobDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delJobDefinitionName' - The name of the model quality monitoring job definition to delete.
deleteModelQualityJobDefinition ::
  -- | 'delJobDefinitionName'
  Text ->
  DeleteModelQualityJobDefinition
deleteModelQualityJobDefinition pJobDefinitionName_ =
  DeleteModelQualityJobDefinition'
    { _delJobDefinitionName =
        pJobDefinitionName_
    }

-- | The name of the model quality monitoring job definition to delete.
delJobDefinitionName :: Lens' DeleteModelQualityJobDefinition Text
delJobDefinitionName = lens _delJobDefinitionName (\s a -> s {_delJobDefinitionName = a})

instance AWSRequest DeleteModelQualityJobDefinition where
  type
    Rs DeleteModelQualityJobDefinition =
      DeleteModelQualityJobDefinitionResponse
  request = postJSON sageMaker
  response =
    receiveNull
      DeleteModelQualityJobDefinitionResponse'

instance Hashable DeleteModelQualityJobDefinition

instance NFData DeleteModelQualityJobDefinition

instance ToHeaders DeleteModelQualityJobDefinition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.DeleteModelQualityJobDefinition" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteModelQualityJobDefinition where
  toJSON DeleteModelQualityJobDefinition' {..} =
    object
      ( catMaybes
          [ Just
              ("JobDefinitionName" .= _delJobDefinitionName)
          ]
      )

instance ToPath DeleteModelQualityJobDefinition where
  toPath = const "/"

instance ToQuery DeleteModelQualityJobDefinition where
  toQuery = const mempty

-- | /See:/ 'deleteModelQualityJobDefinitionResponse' smart constructor.
data DeleteModelQualityJobDefinitionResponse = DeleteModelQualityJobDefinitionResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteModelQualityJobDefinitionResponse' with the minimum fields required to make a request.
deleteModelQualityJobDefinitionResponse ::
  DeleteModelQualityJobDefinitionResponse
deleteModelQualityJobDefinitionResponse =
  DeleteModelQualityJobDefinitionResponse'

instance
  NFData
    DeleteModelQualityJobDefinitionResponse
