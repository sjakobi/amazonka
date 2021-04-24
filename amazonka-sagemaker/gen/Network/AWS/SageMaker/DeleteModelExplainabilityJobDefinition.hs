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
-- Module      : Network.AWS.SageMaker.DeleteModelExplainabilityJobDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Amazon SageMaker model explainability job definition.
module Network.AWS.SageMaker.DeleteModelExplainabilityJobDefinition
  ( -- * Creating a Request
    deleteModelExplainabilityJobDefinition,
    DeleteModelExplainabilityJobDefinition,

    -- * Request Lenses
    dmejdJobDefinitionName,

    -- * Destructuring the Response
    deleteModelExplainabilityJobDefinitionResponse,
    DeleteModelExplainabilityJobDefinitionResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteModelExplainabilityJobDefinition' smart constructor.
newtype DeleteModelExplainabilityJobDefinition = DeleteModelExplainabilityJobDefinition'
  { _dmejdJobDefinitionName ::
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

-- | Creates a value of 'DeleteModelExplainabilityJobDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmejdJobDefinitionName' - The name of the model explainability job definition to delete.
deleteModelExplainabilityJobDefinition ::
  -- | 'dmejdJobDefinitionName'
  Text ->
  DeleteModelExplainabilityJobDefinition
deleteModelExplainabilityJobDefinition
  pJobDefinitionName_ =
    DeleteModelExplainabilityJobDefinition'
      { _dmejdJobDefinitionName =
          pJobDefinitionName_
      }

-- | The name of the model explainability job definition to delete.
dmejdJobDefinitionName :: Lens' DeleteModelExplainabilityJobDefinition Text
dmejdJobDefinitionName = lens _dmejdJobDefinitionName (\s a -> s {_dmejdJobDefinitionName = a})

instance
  AWSRequest
    DeleteModelExplainabilityJobDefinition
  where
  type
    Rs DeleteModelExplainabilityJobDefinition =
      DeleteModelExplainabilityJobDefinitionResponse
  request = postJSON sageMaker
  response =
    receiveNull
      DeleteModelExplainabilityJobDefinitionResponse'

instance
  Hashable
    DeleteModelExplainabilityJobDefinition

instance
  NFData
    DeleteModelExplainabilityJobDefinition

instance
  ToHeaders
    DeleteModelExplainabilityJobDefinition
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.DeleteModelExplainabilityJobDefinition" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DeleteModelExplainabilityJobDefinition
  where
  toJSON DeleteModelExplainabilityJobDefinition' {..} =
    object
      ( catMaybes
          [ Just
              ("JobDefinitionName" .= _dmejdJobDefinitionName)
          ]
      )

instance
  ToPath
    DeleteModelExplainabilityJobDefinition
  where
  toPath = const "/"

instance
  ToQuery
    DeleteModelExplainabilityJobDefinition
  where
  toQuery = const mempty

-- | /See:/ 'deleteModelExplainabilityJobDefinitionResponse' smart constructor.
data DeleteModelExplainabilityJobDefinitionResponse = DeleteModelExplainabilityJobDefinitionResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteModelExplainabilityJobDefinitionResponse' with the minimum fields required to make a request.
deleteModelExplainabilityJobDefinitionResponse ::
  DeleteModelExplainabilityJobDefinitionResponse
deleteModelExplainabilityJobDefinitionResponse =
  DeleteModelExplainabilityJobDefinitionResponse'

instance
  NFData
    DeleteModelExplainabilityJobDefinitionResponse
