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
-- Module      : Network.AWS.CodeDeploy.BatchGetApplicationRevisions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about one or more application revisions. The maximum number of application revisions that can be returned is 25.
module Network.AWS.CodeDeploy.BatchGetApplicationRevisions
  ( -- * Creating a Request
    batchGetApplicationRevisions,
    BatchGetApplicationRevisions,

    -- * Request Lenses
    bgarApplicationName,
    bgarRevisions,

    -- * Destructuring the Response
    batchGetApplicationRevisionsResponse,
    BatchGetApplicationRevisionsResponse,

    -- * Response Lenses
    bgarrrsRevisions,
    bgarrrsErrorMessage,
    bgarrrsApplicationName,
    bgarrrsResponseStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @BatchGetApplicationRevisions@ operation.
--
--
--
-- /See:/ 'batchGetApplicationRevisions' smart constructor.
data BatchGetApplicationRevisions = BatchGetApplicationRevisions'
  { _bgarApplicationName ::
      !Text,
    _bgarRevisions ::
      ![RevisionLocation]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchGetApplicationRevisions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgarApplicationName' - The name of an AWS CodeDeploy application about which to get revision information.
--
-- * 'bgarRevisions' - An array of @RevisionLocation@ objects that specify information to get about the application revisions, including type and location. The maximum number of @RevisionLocation@ objects you can specify is 25.
batchGetApplicationRevisions ::
  -- | 'bgarApplicationName'
  Text ->
  BatchGetApplicationRevisions
batchGetApplicationRevisions pApplicationName_ =
  BatchGetApplicationRevisions'
    { _bgarApplicationName =
        pApplicationName_,
      _bgarRevisions = mempty
    }

-- | The name of an AWS CodeDeploy application about which to get revision information.
bgarApplicationName :: Lens' BatchGetApplicationRevisions Text
bgarApplicationName = lens _bgarApplicationName (\s a -> s {_bgarApplicationName = a})

-- | An array of @RevisionLocation@ objects that specify information to get about the application revisions, including type and location. The maximum number of @RevisionLocation@ objects you can specify is 25.
bgarRevisions :: Lens' BatchGetApplicationRevisions [RevisionLocation]
bgarRevisions = lens _bgarRevisions (\s a -> s {_bgarRevisions = a}) . _Coerce

instance AWSRequest BatchGetApplicationRevisions where
  type
    Rs BatchGetApplicationRevisions =
      BatchGetApplicationRevisionsResponse
  request = postJSON codeDeploy
  response =
    receiveJSON
      ( \s h x ->
          BatchGetApplicationRevisionsResponse'
            <$> (x .?> "revisions" .!@ mempty)
            <*> (x .?> "errorMessage")
            <*> (x .?> "applicationName")
            <*> (pure (fromEnum s))
      )

instance Hashable BatchGetApplicationRevisions

instance NFData BatchGetApplicationRevisions

instance ToHeaders BatchGetApplicationRevisions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeDeploy_20141006.BatchGetApplicationRevisions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchGetApplicationRevisions where
  toJSON BatchGetApplicationRevisions' {..} =
    object
      ( catMaybes
          [ Just ("applicationName" .= _bgarApplicationName),
            Just ("revisions" .= _bgarRevisions)
          ]
      )

instance ToPath BatchGetApplicationRevisions where
  toPath = const "/"

instance ToQuery BatchGetApplicationRevisions where
  toQuery = const mempty

-- | Represents the output of a @BatchGetApplicationRevisions@ operation.
--
--
--
-- /See:/ 'batchGetApplicationRevisionsResponse' smart constructor.
data BatchGetApplicationRevisionsResponse = BatchGetApplicationRevisionsResponse'
  { _bgarrrsRevisions ::
      !( Maybe
           [RevisionInfo]
       ),
    _bgarrrsErrorMessage ::
      !( Maybe
           Text
       ),
    _bgarrrsApplicationName ::
      !( Maybe
           Text
       ),
    _bgarrrsResponseStatus ::
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

-- | Creates a value of 'BatchGetApplicationRevisionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgarrrsRevisions' - Additional information about the revisions, including the type and location.
--
-- * 'bgarrrsErrorMessage' - Information about errors that might have occurred during the API call.
--
-- * 'bgarrrsApplicationName' - The name of the application that corresponds to the revisions.
--
-- * 'bgarrrsResponseStatus' - -- | The response status code.
batchGetApplicationRevisionsResponse ::
  -- | 'bgarrrsResponseStatus'
  Int ->
  BatchGetApplicationRevisionsResponse
batchGetApplicationRevisionsResponse pResponseStatus_ =
  BatchGetApplicationRevisionsResponse'
    { _bgarrrsRevisions =
        Nothing,
      _bgarrrsErrorMessage = Nothing,
      _bgarrrsApplicationName = Nothing,
      _bgarrrsResponseStatus =
        pResponseStatus_
    }

-- | Additional information about the revisions, including the type and location.
bgarrrsRevisions :: Lens' BatchGetApplicationRevisionsResponse [RevisionInfo]
bgarrrsRevisions = lens _bgarrrsRevisions (\s a -> s {_bgarrrsRevisions = a}) . _Default . _Coerce

-- | Information about errors that might have occurred during the API call.
bgarrrsErrorMessage :: Lens' BatchGetApplicationRevisionsResponse (Maybe Text)
bgarrrsErrorMessage = lens _bgarrrsErrorMessage (\s a -> s {_bgarrrsErrorMessage = a})

-- | The name of the application that corresponds to the revisions.
bgarrrsApplicationName :: Lens' BatchGetApplicationRevisionsResponse (Maybe Text)
bgarrrsApplicationName = lens _bgarrrsApplicationName (\s a -> s {_bgarrrsApplicationName = a})

-- | -- | The response status code.
bgarrrsResponseStatus :: Lens' BatchGetApplicationRevisionsResponse Int
bgarrrsResponseStatus = lens _bgarrrsResponseStatus (\s a -> s {_bgarrrsResponseStatus = a})

instance NFData BatchGetApplicationRevisionsResponse
