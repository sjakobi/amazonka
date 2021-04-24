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
-- Module      : Network.AWS.AlexaBusiness.CreateGatewayGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a gateway group with the specified details.
module Network.AWS.AlexaBusiness.CreateGatewayGroup
  ( -- * Creating a Request
    createGatewayGroup,
    CreateGatewayGroup,

    -- * Request Lenses
    cggTags,
    cggDescription,
    cggName,
    cggClientRequestToken,

    -- * Destructuring the Response
    createGatewayGroupResponse,
    CreateGatewayGroupResponse,

    -- * Response Lenses
    cggrrsGatewayGroupARN,
    cggrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createGatewayGroup' smart constructor.
data CreateGatewayGroup = CreateGatewayGroup'
  { _cggTags ::
      !(Maybe [Tag]),
    _cggDescription :: !(Maybe Text),
    _cggName :: !Text,
    _cggClientRequestToken :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateGatewayGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cggTags' - The tags to be added to the specified resource. Do not provide system tags.
--
-- * 'cggDescription' - The description of the gateway group.
--
-- * 'cggName' - The name of the gateway group.
--
-- * 'cggClientRequestToken' - A unique, user-specified identifier for the request that ensures idempotency.
createGatewayGroup ::
  -- | 'cggName'
  Text ->
  -- | 'cggClientRequestToken'
  Text ->
  CreateGatewayGroup
createGatewayGroup pName_ pClientRequestToken_ =
  CreateGatewayGroup'
    { _cggTags = Nothing,
      _cggDescription = Nothing,
      _cggName = pName_,
      _cggClientRequestToken = pClientRequestToken_
    }

-- | The tags to be added to the specified resource. Do not provide system tags.
cggTags :: Lens' CreateGatewayGroup [Tag]
cggTags = lens _cggTags (\s a -> s {_cggTags = a}) . _Default . _Coerce

-- | The description of the gateway group.
cggDescription :: Lens' CreateGatewayGroup (Maybe Text)
cggDescription = lens _cggDescription (\s a -> s {_cggDescription = a})

-- | The name of the gateway group.
cggName :: Lens' CreateGatewayGroup Text
cggName = lens _cggName (\s a -> s {_cggName = a})

-- | A unique, user-specified identifier for the request that ensures idempotency.
cggClientRequestToken :: Lens' CreateGatewayGroup Text
cggClientRequestToken = lens _cggClientRequestToken (\s a -> s {_cggClientRequestToken = a})

instance AWSRequest CreateGatewayGroup where
  type
    Rs CreateGatewayGroup =
      CreateGatewayGroupResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          CreateGatewayGroupResponse'
            <$> (x .?> "GatewayGroupArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateGatewayGroup

instance NFData CreateGatewayGroup

instance ToHeaders CreateGatewayGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AlexaForBusiness.CreateGatewayGroup" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateGatewayGroup where
  toJSON CreateGatewayGroup' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _cggTags,
            ("Description" .=) <$> _cggDescription,
            Just ("Name" .= _cggName),
            Just
              ("ClientRequestToken" .= _cggClientRequestToken)
          ]
      )

instance ToPath CreateGatewayGroup where
  toPath = const "/"

instance ToQuery CreateGatewayGroup where
  toQuery = const mempty

-- | /See:/ 'createGatewayGroupResponse' smart constructor.
data CreateGatewayGroupResponse = CreateGatewayGroupResponse'
  { _cggrrsGatewayGroupARN ::
      !(Maybe Text),
    _cggrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateGatewayGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cggrrsGatewayGroupARN' - The ARN of the created gateway group.
--
-- * 'cggrrsResponseStatus' - -- | The response status code.
createGatewayGroupResponse ::
  -- | 'cggrrsResponseStatus'
  Int ->
  CreateGatewayGroupResponse
createGatewayGroupResponse pResponseStatus_ =
  CreateGatewayGroupResponse'
    { _cggrrsGatewayGroupARN =
        Nothing,
      _cggrrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the created gateway group.
cggrrsGatewayGroupARN :: Lens' CreateGatewayGroupResponse (Maybe Text)
cggrrsGatewayGroupARN = lens _cggrrsGatewayGroupARN (\s a -> s {_cggrrsGatewayGroupARN = a})

-- | -- | The response status code.
cggrrsResponseStatus :: Lens' CreateGatewayGroupResponse Int
cggrrsResponseStatus = lens _cggrrsResponseStatus (\s a -> s {_cggrrsResponseStatus = a})

instance NFData CreateGatewayGroupResponse
