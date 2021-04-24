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
-- Module      : Network.AWS.APIGateway.DeleteModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a model.
module Network.AWS.APIGateway.DeleteModel
  ( -- * Creating a Request
    deleteModel,
    DeleteModel,

    -- * Request Lenses
    dmRestAPIId,
    dmModelName,

    -- * Destructuring the Response
    deleteModelResponse,
    DeleteModelResponse,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to delete an existing model in an existing 'RestApi' resource.
--
--
--
-- /See:/ 'deleteModel' smart constructor.
data DeleteModel = DeleteModel'
  { _dmRestAPIId ::
      !Text,
    _dmModelName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteModel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'dmModelName' - [Required] The name of the model to delete.
deleteModel ::
  -- | 'dmRestAPIId'
  Text ->
  -- | 'dmModelName'
  Text ->
  DeleteModel
deleteModel pRestAPIId_ pModelName_ =
  DeleteModel'
    { _dmRestAPIId = pRestAPIId_,
      _dmModelName = pModelName_
    }

-- | [Required] The string identifier of the associated 'RestApi' .
dmRestAPIId :: Lens' DeleteModel Text
dmRestAPIId = lens _dmRestAPIId (\s a -> s {_dmRestAPIId = a})

-- | [Required] The name of the model to delete.
dmModelName :: Lens' DeleteModel Text
dmModelName = lens _dmModelName (\s a -> s {_dmModelName = a})

instance AWSRequest DeleteModel where
  type Rs DeleteModel = DeleteModelResponse
  request = delete apiGateway
  response = receiveNull DeleteModelResponse'

instance Hashable DeleteModel

instance NFData DeleteModel

instance ToHeaders DeleteModel where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath DeleteModel where
  toPath DeleteModel' {..} =
    mconcat
      [ "/restapis/",
        toBS _dmRestAPIId,
        "/models/",
        toBS _dmModelName
      ]

instance ToQuery DeleteModel where
  toQuery = const mempty

-- | /See:/ 'deleteModelResponse' smart constructor.
data DeleteModelResponse = DeleteModelResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteModelResponse' with the minimum fields required to make a request.
deleteModelResponse ::
  DeleteModelResponse
deleteModelResponse = DeleteModelResponse'

instance NFData DeleteModelResponse
