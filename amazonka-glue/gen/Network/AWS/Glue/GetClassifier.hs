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
-- Module      : Network.AWS.Glue.GetClassifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a classifier by name.
module Network.AWS.Glue.GetClassifier
  ( -- * Creating a Request
    getClassifier,
    GetClassifier,

    -- * Request Lenses
    gName,

    -- * Destructuring the Response
    getClassifierResponse,
    GetClassifierResponse,

    -- * Response Lenses
    getclassifierresponseersClassifier,
    getclassifierresponseersResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getClassifier' smart constructor.
newtype GetClassifier = GetClassifier'
  { _gName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetClassifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gName' - Name of the classifier to retrieve.
getClassifier ::
  -- | 'gName'
  Text ->
  GetClassifier
getClassifier pName_ =
  GetClassifier' {_gName = pName_}

-- | Name of the classifier to retrieve.
gName :: Lens' GetClassifier Text
gName = lens _gName (\s a -> s {_gName = a})

instance AWSRequest GetClassifier where
  type Rs GetClassifier = GetClassifierResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetClassifierResponse'
            <$> (x .?> "Classifier") <*> (pure (fromEnum s))
      )

instance Hashable GetClassifier

instance NFData GetClassifier

instance ToHeaders GetClassifier where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetClassifier" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetClassifier where
  toJSON GetClassifier' {..} =
    object (catMaybes [Just ("Name" .= _gName)])

instance ToPath GetClassifier where
  toPath = const "/"

instance ToQuery GetClassifier where
  toQuery = const mempty

-- | /See:/ 'getClassifierResponse' smart constructor.
data GetClassifierResponse = GetClassifierResponse'
  { _getclassifierresponseersClassifier ::
      !(Maybe Classifier),
    _getclassifierresponseersResponseStatus ::
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

-- | Creates a value of 'GetClassifierResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'getclassifierresponseersClassifier' - The requested classifier.
--
-- * 'getclassifierresponseersResponseStatus' - -- | The response status code.
getClassifierResponse ::
  -- | 'getclassifierresponseersResponseStatus'
  Int ->
  GetClassifierResponse
getClassifierResponse pResponseStatus_ =
  GetClassifierResponse'
    { _getclassifierresponseersClassifier =
        Nothing,
      _getclassifierresponseersResponseStatus =
        pResponseStatus_
    }

-- | The requested classifier.
getclassifierresponseersClassifier :: Lens' GetClassifierResponse (Maybe Classifier)
getclassifierresponseersClassifier = lens _getclassifierresponseersClassifier (\s a -> s {_getclassifierresponseersClassifier = a})

-- | -- | The response status code.
getclassifierresponseersResponseStatus :: Lens' GetClassifierResponse Int
getclassifierresponseersResponseStatus = lens _getclassifierresponseersResponseStatus (\s a -> s {_getclassifierresponseersResponseStatus = a})

instance NFData GetClassifierResponse
