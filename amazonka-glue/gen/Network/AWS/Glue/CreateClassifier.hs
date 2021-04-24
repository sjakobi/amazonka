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
-- Module      : Network.AWS.Glue.CreateClassifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a classifier in the user's account. This can be a @GrokClassifier@ , an @XMLClassifier@ , a @JsonClassifier@ , or a @CsvClassifier@ , depending on which field of the request is present.
module Network.AWS.Glue.CreateClassifier
  ( -- * Creating a Request
    createClassifier,
    CreateClassifier,

    -- * Request Lenses
    ccXMLClassifier,
    ccJSONClassifier,
    ccCSVClassifier,
    ccGrokClassifier,

    -- * Destructuring the Response
    createClassifierResponse,
    CreateClassifierResponse,

    -- * Response Lenses
    crersResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createClassifier' smart constructor.
data CreateClassifier = CreateClassifier'
  { _ccXMLClassifier ::
      !(Maybe CreateXMLClassifierRequest),
    _ccJSONClassifier ::
      !(Maybe CreateJSONClassifierRequest),
    _ccCSVClassifier ::
      !(Maybe CreateCSVClassifierRequest),
    _ccGrokClassifier ::
      !(Maybe CreateGrokClassifierRequest)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateClassifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccXMLClassifier' - An @XMLClassifier@ object specifying the classifier to create.
--
-- * 'ccJSONClassifier' - A @JsonClassifier@ object specifying the classifier to create.
--
-- * 'ccCSVClassifier' - A @CsvClassifier@ object specifying the classifier to create.
--
-- * 'ccGrokClassifier' - A @GrokClassifier@ object specifying the classifier to create.
createClassifier ::
  CreateClassifier
createClassifier =
  CreateClassifier'
    { _ccXMLClassifier = Nothing,
      _ccJSONClassifier = Nothing,
      _ccCSVClassifier = Nothing,
      _ccGrokClassifier = Nothing
    }

-- | An @XMLClassifier@ object specifying the classifier to create.
ccXMLClassifier :: Lens' CreateClassifier (Maybe CreateXMLClassifierRequest)
ccXMLClassifier = lens _ccXMLClassifier (\s a -> s {_ccXMLClassifier = a})

-- | A @JsonClassifier@ object specifying the classifier to create.
ccJSONClassifier :: Lens' CreateClassifier (Maybe CreateJSONClassifierRequest)
ccJSONClassifier = lens _ccJSONClassifier (\s a -> s {_ccJSONClassifier = a})

-- | A @CsvClassifier@ object specifying the classifier to create.
ccCSVClassifier :: Lens' CreateClassifier (Maybe CreateCSVClassifierRequest)
ccCSVClassifier = lens _ccCSVClassifier (\s a -> s {_ccCSVClassifier = a})

-- | A @GrokClassifier@ object specifying the classifier to create.
ccGrokClassifier :: Lens' CreateClassifier (Maybe CreateGrokClassifierRequest)
ccGrokClassifier = lens _ccGrokClassifier (\s a -> s {_ccGrokClassifier = a})

instance AWSRequest CreateClassifier where
  type Rs CreateClassifier = CreateClassifierResponse
  request = postJSON glue
  response =
    receiveEmpty
      ( \s h x ->
          CreateClassifierResponse' <$> (pure (fromEnum s))
      )

instance Hashable CreateClassifier

instance NFData CreateClassifier

instance ToHeaders CreateClassifier where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.CreateClassifier" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateClassifier where
  toJSON CreateClassifier' {..} =
    object
      ( catMaybes
          [ ("XMLClassifier" .=) <$> _ccXMLClassifier,
            ("JsonClassifier" .=) <$> _ccJSONClassifier,
            ("CsvClassifier" .=) <$> _ccCSVClassifier,
            ("GrokClassifier" .=) <$> _ccGrokClassifier
          ]
      )

instance ToPath CreateClassifier where
  toPath = const "/"

instance ToQuery CreateClassifier where
  toQuery = const mempty

-- | /See:/ 'createClassifierResponse' smart constructor.
newtype CreateClassifierResponse = CreateClassifierResponse'
  { _crersResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateClassifierResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crersResponseStatus' - -- | The response status code.
createClassifierResponse ::
  -- | 'crersResponseStatus'
  Int ->
  CreateClassifierResponse
createClassifierResponse pResponseStatus_ =
  CreateClassifierResponse'
    { _crersResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
crersResponseStatus :: Lens' CreateClassifierResponse Int
crersResponseStatus = lens _crersResponseStatus (\s a -> s {_crersResponseStatus = a})

instance NFData CreateClassifierResponse
