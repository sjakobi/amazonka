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
-- Module      : Network.AWS.SageMaker.DeleteDataQualityJobDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a data quality monitoring job definition.
module Network.AWS.SageMaker.DeleteDataQualityJobDefinition
  ( -- * Creating a Request
    deleteDataQualityJobDefinition,
    DeleteDataQualityJobDefinition,

    -- * Request Lenses
    ddqjdJobDefinitionName,

    -- * Destructuring the Response
    deleteDataQualityJobDefinitionResponse,
    DeleteDataQualityJobDefinitionResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteDataQualityJobDefinition' smart constructor.
newtype DeleteDataQualityJobDefinition = DeleteDataQualityJobDefinition'
  { _ddqjdJobDefinitionName ::
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

-- | Creates a value of 'DeleteDataQualityJobDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddqjdJobDefinitionName' - The name of the data quality monitoring job definition to delete.
deleteDataQualityJobDefinition ::
  -- | 'ddqjdJobDefinitionName'
  Text ->
  DeleteDataQualityJobDefinition
deleteDataQualityJobDefinition pJobDefinitionName_ =
  DeleteDataQualityJobDefinition'
    { _ddqjdJobDefinitionName =
        pJobDefinitionName_
    }

-- | The name of the data quality monitoring job definition to delete.
ddqjdJobDefinitionName :: Lens' DeleteDataQualityJobDefinition Text
ddqjdJobDefinitionName = lens _ddqjdJobDefinitionName (\s a -> s {_ddqjdJobDefinitionName = a})

instance AWSRequest DeleteDataQualityJobDefinition where
  type
    Rs DeleteDataQualityJobDefinition =
      DeleteDataQualityJobDefinitionResponse
  request = postJSON sageMaker
  response =
    receiveNull DeleteDataQualityJobDefinitionResponse'

instance Hashable DeleteDataQualityJobDefinition

instance NFData DeleteDataQualityJobDefinition

instance ToHeaders DeleteDataQualityJobDefinition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.DeleteDataQualityJobDefinition" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteDataQualityJobDefinition where
  toJSON DeleteDataQualityJobDefinition' {..} =
    object
      ( catMaybes
          [ Just
              ("JobDefinitionName" .= _ddqjdJobDefinitionName)
          ]
      )

instance ToPath DeleteDataQualityJobDefinition where
  toPath = const "/"

instance ToQuery DeleteDataQualityJobDefinition where
  toQuery = const mempty

-- | /See:/ 'deleteDataQualityJobDefinitionResponse' smart constructor.
data DeleteDataQualityJobDefinitionResponse = DeleteDataQualityJobDefinitionResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteDataQualityJobDefinitionResponse' with the minimum fields required to make a request.
deleteDataQualityJobDefinitionResponse ::
  DeleteDataQualityJobDefinitionResponse
deleteDataQualityJobDefinitionResponse =
  DeleteDataQualityJobDefinitionResponse'

instance
  NFData
    DeleteDataQualityJobDefinitionResponse
