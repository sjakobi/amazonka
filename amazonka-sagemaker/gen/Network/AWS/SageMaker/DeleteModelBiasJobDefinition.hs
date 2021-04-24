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
-- Module      : Network.AWS.SageMaker.DeleteModelBiasJobDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Amazon SageMaker model bias job definition.
module Network.AWS.SageMaker.DeleteModelBiasJobDefinition
  ( -- * Creating a Request
    deleteModelBiasJobDefinition,
    DeleteModelBiasJobDefinition,

    -- * Request Lenses
    dmbjdJobDefinitionName,

    -- * Destructuring the Response
    deleteModelBiasJobDefinitionResponse,
    DeleteModelBiasJobDefinitionResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteModelBiasJobDefinition' smart constructor.
newtype DeleteModelBiasJobDefinition = DeleteModelBiasJobDefinition'
  { _dmbjdJobDefinitionName ::
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

-- | Creates a value of 'DeleteModelBiasJobDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmbjdJobDefinitionName' - The name of the model bias job definition to delete.
deleteModelBiasJobDefinition ::
  -- | 'dmbjdJobDefinitionName'
  Text ->
  DeleteModelBiasJobDefinition
deleteModelBiasJobDefinition pJobDefinitionName_ =
  DeleteModelBiasJobDefinition'
    { _dmbjdJobDefinitionName =
        pJobDefinitionName_
    }

-- | The name of the model bias job definition to delete.
dmbjdJobDefinitionName :: Lens' DeleteModelBiasJobDefinition Text
dmbjdJobDefinitionName = lens _dmbjdJobDefinitionName (\s a -> s {_dmbjdJobDefinitionName = a})

instance AWSRequest DeleteModelBiasJobDefinition where
  type
    Rs DeleteModelBiasJobDefinition =
      DeleteModelBiasJobDefinitionResponse
  request = postJSON sageMaker
  response =
    receiveNull DeleteModelBiasJobDefinitionResponse'

instance Hashable DeleteModelBiasJobDefinition

instance NFData DeleteModelBiasJobDefinition

instance ToHeaders DeleteModelBiasJobDefinition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.DeleteModelBiasJobDefinition" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteModelBiasJobDefinition where
  toJSON DeleteModelBiasJobDefinition' {..} =
    object
      ( catMaybes
          [ Just
              ("JobDefinitionName" .= _dmbjdJobDefinitionName)
          ]
      )

instance ToPath DeleteModelBiasJobDefinition where
  toPath = const "/"

instance ToQuery DeleteModelBiasJobDefinition where
  toQuery = const mempty

-- | /See:/ 'deleteModelBiasJobDefinitionResponse' smart constructor.
data DeleteModelBiasJobDefinitionResponse = DeleteModelBiasJobDefinitionResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteModelBiasJobDefinitionResponse' with the minimum fields required to make a request.
deleteModelBiasJobDefinitionResponse ::
  DeleteModelBiasJobDefinitionResponse
deleteModelBiasJobDefinitionResponse =
  DeleteModelBiasJobDefinitionResponse'

instance NFData DeleteModelBiasJobDefinitionResponse
