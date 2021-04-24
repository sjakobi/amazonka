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
-- Module      : Network.AWS.APIGateway.GetModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an existing model defined for a 'RestApi' resource.
module Network.AWS.APIGateway.GetModel
  ( -- * Creating a Request
    getModel,
    GetModel,

    -- * Request Lenses
    gmFlatten,
    gmRestAPIId,
    gmModelName,

    -- * Destructuring the Response
    model,
    Model,

    -- * Response Lenses
    mContentType,
    mSchema,
    mId,
    mName,
    mDescription,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to list information about a model in an existing 'RestApi' resource.
--
--
--
-- /See:/ 'getModel' smart constructor.
data GetModel = GetModel'
  { _gmFlatten ::
      !(Maybe Bool),
    _gmRestAPIId :: !Text,
    _gmModelName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetModel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmFlatten' - A query parameter of a Boolean value to resolve (@true@ ) all external model references and returns a flattened model schema or not (@false@ ) The default is @false@ .
--
-- * 'gmRestAPIId' - [Required] The 'RestApi' identifier under which the 'Model' exists.
--
-- * 'gmModelName' - [Required] The name of the model as an identifier.
getModel ::
  -- | 'gmRestAPIId'
  Text ->
  -- | 'gmModelName'
  Text ->
  GetModel
getModel pRestAPIId_ pModelName_ =
  GetModel'
    { _gmFlatten = Nothing,
      _gmRestAPIId = pRestAPIId_,
      _gmModelName = pModelName_
    }

-- | A query parameter of a Boolean value to resolve (@true@ ) all external model references and returns a flattened model schema or not (@false@ ) The default is @false@ .
gmFlatten :: Lens' GetModel (Maybe Bool)
gmFlatten = lens _gmFlatten (\s a -> s {_gmFlatten = a})

-- | [Required] The 'RestApi' identifier under which the 'Model' exists.
gmRestAPIId :: Lens' GetModel Text
gmRestAPIId = lens _gmRestAPIId (\s a -> s {_gmRestAPIId = a})

-- | [Required] The name of the model as an identifier.
gmModelName :: Lens' GetModel Text
gmModelName = lens _gmModelName (\s a -> s {_gmModelName = a})

instance AWSRequest GetModel where
  type Rs GetModel = Model
  request = get apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable GetModel

instance NFData GetModel

instance ToHeaders GetModel where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetModel where
  toPath GetModel' {..} =
    mconcat
      [ "/restapis/",
        toBS _gmRestAPIId,
        "/models/",
        toBS _gmModelName
      ]

instance ToQuery GetModel where
  toQuery GetModel' {..} =
    mconcat ["flatten" =: _gmFlatten]
