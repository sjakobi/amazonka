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
-- Module      : Network.AWS.APIGateway.DeleteMethodResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing 'MethodResponse' resource.
module Network.AWS.APIGateway.DeleteMethodResponse
  ( -- * Creating a Request
    deleteMethodResponse,
    DeleteMethodResponse,

    -- * Request Lenses
    dmrRestAPIId,
    dmrResourceId,
    dmrHttpMethod,
    dmrStatusCode,

    -- * Destructuring the Response
    deleteMethodResponseResponse,
    DeleteMethodResponseResponse,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | A request to delete an existing 'MethodResponse' resource.
--
--
--
-- /See:/ 'deleteMethodResponse' smart constructor.
data DeleteMethodResponse = DeleteMethodResponse'
  { _dmrRestAPIId ::
      !Text,
    _dmrResourceId :: !Text,
    _dmrHttpMethod :: !Text,
    _dmrStatusCode :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteMethodResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmrRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'dmrResourceId' - [Required] The 'Resource' identifier for the 'MethodResponse' resource.
--
-- * 'dmrHttpMethod' - [Required] The HTTP verb of the 'Method' resource.
--
-- * 'dmrStatusCode' - [Required] The status code identifier for the 'MethodResponse' resource.
deleteMethodResponse ::
  -- | 'dmrRestAPIId'
  Text ->
  -- | 'dmrResourceId'
  Text ->
  -- | 'dmrHttpMethod'
  Text ->
  -- | 'dmrStatusCode'
  Text ->
  DeleteMethodResponse
deleteMethodResponse
  pRestAPIId_
  pResourceId_
  pHttpMethod_
  pStatusCode_ =
    DeleteMethodResponse'
      { _dmrRestAPIId = pRestAPIId_,
        _dmrResourceId = pResourceId_,
        _dmrHttpMethod = pHttpMethod_,
        _dmrStatusCode = pStatusCode_
      }

-- | [Required] The string identifier of the associated 'RestApi' .
dmrRestAPIId :: Lens' DeleteMethodResponse Text
dmrRestAPIId = lens _dmrRestAPIId (\s a -> s {_dmrRestAPIId = a})

-- | [Required] The 'Resource' identifier for the 'MethodResponse' resource.
dmrResourceId :: Lens' DeleteMethodResponse Text
dmrResourceId = lens _dmrResourceId (\s a -> s {_dmrResourceId = a})

-- | [Required] The HTTP verb of the 'Method' resource.
dmrHttpMethod :: Lens' DeleteMethodResponse Text
dmrHttpMethod = lens _dmrHttpMethod (\s a -> s {_dmrHttpMethod = a})

-- | [Required] The status code identifier for the 'MethodResponse' resource.
dmrStatusCode :: Lens' DeleteMethodResponse Text
dmrStatusCode = lens _dmrStatusCode (\s a -> s {_dmrStatusCode = a})

instance AWSRequest DeleteMethodResponse where
  type
    Rs DeleteMethodResponse =
      DeleteMethodResponseResponse
  request = delete apiGateway
  response = receiveNull DeleteMethodResponseResponse'

instance Hashable DeleteMethodResponse

instance NFData DeleteMethodResponse

instance ToHeaders DeleteMethodResponse where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath DeleteMethodResponse where
  toPath DeleteMethodResponse' {..} =
    mconcat
      [ "/restapis/",
        toBS _dmrRestAPIId,
        "/resources/",
        toBS _dmrResourceId,
        "/methods/",
        toBS _dmrHttpMethod,
        "/responses/",
        toBS _dmrStatusCode
      ]

instance ToQuery DeleteMethodResponse where
  toQuery = const mempty

-- | /See:/ 'deleteMethodResponseResponse' smart constructor.
data DeleteMethodResponseResponse = DeleteMethodResponseResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteMethodResponseResponse' with the minimum fields required to make a request.
deleteMethodResponseResponse ::
  DeleteMethodResponseResponse
deleteMethodResponseResponse =
  DeleteMethodResponseResponse'

instance NFData DeleteMethodResponseResponse
