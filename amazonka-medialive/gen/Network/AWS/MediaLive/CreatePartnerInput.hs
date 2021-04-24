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
-- Module      : Network.AWS.MediaLive.CreatePartnerInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a partner input
module Network.AWS.MediaLive.CreatePartnerInput
  ( -- * Creating a Request
    createPartnerInput',
    CreatePartnerInput',

    -- * Request Lenses
    cpiRequestId,
    cpiTags,
    cpiInputId,

    -- * Destructuring the Response
    createPartnerInputResponse,
    CreatePartnerInputResponse,

    -- * Response Lenses
    cpirrsInput,
    cpirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | A request to create a partner input
--
-- /See:/ 'createPartnerInput'' smart constructor.
data CreatePartnerInput' = CreatePartnerInput''
  { _cpiRequestId ::
      !(Maybe Text),
    _cpiTags ::
      !(Maybe (Map Text Text)),
    _cpiInputId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreatePartnerInput'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpiRequestId' - Unique identifier of the request to ensure the request is handled exactly once in case of retries.
--
-- * 'cpiTags' - A collection of key-value pairs.
--
-- * 'cpiInputId' - Unique ID of the input.
createPartnerInput' ::
  -- | 'cpiInputId'
  Text ->
  CreatePartnerInput'
createPartnerInput' pInputId_ =
  CreatePartnerInput''
    { _cpiRequestId = Nothing,
      _cpiTags = Nothing,
      _cpiInputId = pInputId_
    }

-- | Unique identifier of the request to ensure the request is handled exactly once in case of retries.
cpiRequestId :: Lens' CreatePartnerInput' (Maybe Text)
cpiRequestId = lens _cpiRequestId (\s a -> s {_cpiRequestId = a})

-- | A collection of key-value pairs.
cpiTags :: Lens' CreatePartnerInput' (HashMap Text Text)
cpiTags = lens _cpiTags (\s a -> s {_cpiTags = a}) . _Default . _Map

-- | Unique ID of the input.
cpiInputId :: Lens' CreatePartnerInput' Text
cpiInputId = lens _cpiInputId (\s a -> s {_cpiInputId = a})

instance AWSRequest CreatePartnerInput' where
  type
    Rs CreatePartnerInput' =
      CreatePartnerInputResponse
  request = postJSON mediaLive
  response =
    receiveJSON
      ( \s h x ->
          CreatePartnerInputResponse'
            <$> (x .?> "input") <*> (pure (fromEnum s))
      )

instance Hashable CreatePartnerInput'

instance NFData CreatePartnerInput'

instance ToHeaders CreatePartnerInput' where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreatePartnerInput' where
  toJSON CreatePartnerInput'' {..} =
    object
      ( catMaybes
          [ ("requestId" .=) <$> _cpiRequestId,
            ("tags" .=) <$> _cpiTags
          ]
      )

instance ToPath CreatePartnerInput' where
  toPath CreatePartnerInput'' {..} =
    mconcat
      ["/prod/inputs/", toBS _cpiInputId, "/partners"]

instance ToQuery CreatePartnerInput' where
  toQuery = const mempty

-- | Placeholder documentation for CreatePartnerInputResponse
--
-- /See:/ 'createPartnerInputResponse' smart constructor.
data CreatePartnerInputResponse = CreatePartnerInputResponse'
  { _cpirrsInput ::
      !(Maybe Input),
    _cpirrsResponseStatus ::
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

-- | Creates a value of 'CreatePartnerInputResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpirrsInput' - Undocumented member.
--
-- * 'cpirrsResponseStatus' - -- | The response status code.
createPartnerInputResponse ::
  -- | 'cpirrsResponseStatus'
  Int ->
  CreatePartnerInputResponse
createPartnerInputResponse pResponseStatus_ =
  CreatePartnerInputResponse'
    { _cpirrsInput = Nothing,
      _cpirrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
cpirrsInput :: Lens' CreatePartnerInputResponse (Maybe Input)
cpirrsInput = lens _cpirrsInput (\s a -> s {_cpirrsInput = a})

-- | -- | The response status code.
cpirrsResponseStatus :: Lens' CreatePartnerInputResponse Int
cpirrsResponseStatus = lens _cpirrsResponseStatus (\s a -> s {_cpirrsResponseStatus = a})

instance NFData CreatePartnerInputResponse
