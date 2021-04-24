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
-- Module      : Network.AWS.APIGateway.DeleteMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing 'Method' resource.
module Network.AWS.APIGateway.DeleteMethod
  ( -- * Creating a Request
    deleteMethod,
    DeleteMethod,

    -- * Request Lenses
    dRestAPIId,
    dResourceId,
    dHttpMethod,

    -- * Destructuring the Response
    deleteMethodResponse',
    DeleteMethodResponse',
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to delete an existing 'Method' resource.
--
--
--
-- /See:/ 'deleteMethod' smart constructor.
data DeleteMethod = DeleteMethod'
  { _dRestAPIId ::
      !Text,
    _dResourceId :: !Text,
    _dHttpMethod :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteMethod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'dResourceId' - [Required] The 'Resource' identifier for the 'Method' resource.
--
-- * 'dHttpMethod' - [Required] The HTTP verb of the 'Method' resource.
deleteMethod ::
  -- | 'dRestAPIId'
  Text ->
  -- | 'dResourceId'
  Text ->
  -- | 'dHttpMethod'
  Text ->
  DeleteMethod
deleteMethod pRestAPIId_ pResourceId_ pHttpMethod_ =
  DeleteMethod'
    { _dRestAPIId = pRestAPIId_,
      _dResourceId = pResourceId_,
      _dHttpMethod = pHttpMethod_
    }

-- | [Required] The string identifier of the associated 'RestApi' .
dRestAPIId :: Lens' DeleteMethod Text
dRestAPIId = lens _dRestAPIId (\s a -> s {_dRestAPIId = a})

-- | [Required] The 'Resource' identifier for the 'Method' resource.
dResourceId :: Lens' DeleteMethod Text
dResourceId = lens _dResourceId (\s a -> s {_dResourceId = a})

-- | [Required] The HTTP verb of the 'Method' resource.
dHttpMethod :: Lens' DeleteMethod Text
dHttpMethod = lens _dHttpMethod (\s a -> s {_dHttpMethod = a})

instance AWSRequest DeleteMethod where
  type Rs DeleteMethod = DeleteMethodResponse'
  request = delete apiGateway
  response = receiveNull DeleteMethodResponse''

instance Hashable DeleteMethod

instance NFData DeleteMethod

instance ToHeaders DeleteMethod where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath DeleteMethod where
  toPath DeleteMethod' {..} =
    mconcat
      [ "/restapis/",
        toBS _dRestAPIId,
        "/resources/",
        toBS _dResourceId,
        "/methods/",
        toBS _dHttpMethod
      ]

instance ToQuery DeleteMethod where
  toQuery = const mempty

-- | /See:/ 'deleteMethodResponse'' smart constructor.
data DeleteMethodResponse' = DeleteMethodResponse''
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteMethodResponse'' with the minimum fields required to make a request.
deleteMethodResponse' ::
  DeleteMethodResponse'
deleteMethodResponse' = DeleteMethodResponse''

instance NFData DeleteMethodResponse'
