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
-- Module      : Network.AWS.CodeCommit.TestRepositoryTriggers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests the functionality of repository triggers by sending information to the trigger target. If real data is available in the repository, the test sends data from the last commit. If no data is available, sample data is generated.
module Network.AWS.CodeCommit.TestRepositoryTriggers
  ( -- * Creating a Request
    testRepositoryTriggers,
    TestRepositoryTriggers,

    -- * Request Lenses
    trtRepositoryName,
    trtTriggers,

    -- * Destructuring the Response
    testRepositoryTriggersResponse,
    TestRepositoryTriggersResponse,

    -- * Response Lenses
    trtrrsSuccessfulExecutions,
    trtrrsFailedExecutions,
    trtrrsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a test repository triggers operation.
--
--
--
-- /See:/ 'testRepositoryTriggers' smart constructor.
data TestRepositoryTriggers = TestRepositoryTriggers'
  { _trtRepositoryName ::
      !Text,
    _trtTriggers ::
      ![RepositoryTrigger]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TestRepositoryTriggers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trtRepositoryName' - The name of the repository in which to test the triggers.
--
-- * 'trtTriggers' - The list of triggers to test.
testRepositoryTriggers ::
  -- | 'trtRepositoryName'
  Text ->
  TestRepositoryTriggers
testRepositoryTriggers pRepositoryName_ =
  TestRepositoryTriggers'
    { _trtRepositoryName =
        pRepositoryName_,
      _trtTriggers = mempty
    }

-- | The name of the repository in which to test the triggers.
trtRepositoryName :: Lens' TestRepositoryTriggers Text
trtRepositoryName = lens _trtRepositoryName (\s a -> s {_trtRepositoryName = a})

-- | The list of triggers to test.
trtTriggers :: Lens' TestRepositoryTriggers [RepositoryTrigger]
trtTriggers = lens _trtTriggers (\s a -> s {_trtTriggers = a}) . _Coerce

instance AWSRequest TestRepositoryTriggers where
  type
    Rs TestRepositoryTriggers =
      TestRepositoryTriggersResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          TestRepositoryTriggersResponse'
            <$> (x .?> "successfulExecutions" .!@ mempty)
            <*> (x .?> "failedExecutions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable TestRepositoryTriggers

instance NFData TestRepositoryTriggers

instance ToHeaders TestRepositoryTriggers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.TestRepositoryTriggers" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON TestRepositoryTriggers where
  toJSON TestRepositoryTriggers' {..} =
    object
      ( catMaybes
          [ Just ("repositoryName" .= _trtRepositoryName),
            Just ("triggers" .= _trtTriggers)
          ]
      )

instance ToPath TestRepositoryTriggers where
  toPath = const "/"

instance ToQuery TestRepositoryTriggers where
  toQuery = const mempty

-- | Represents the output of a test repository triggers operation.
--
--
--
-- /See:/ 'testRepositoryTriggersResponse' smart constructor.
data TestRepositoryTriggersResponse = TestRepositoryTriggersResponse'
  { _trtrrsSuccessfulExecutions ::
      !( Maybe
           [Text]
       ),
    _trtrrsFailedExecutions ::
      !( Maybe
           [RepositoryTriggerExecutionFailure]
       ),
    _trtrrsResponseStatus ::
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

-- | Creates a value of 'TestRepositoryTriggersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trtrrsSuccessfulExecutions' - The list of triggers that were successfully tested. This list provides the names of the triggers that were successfully tested, separated by commas.
--
-- * 'trtrrsFailedExecutions' - The list of triggers that were not tested. This list provides the names of the triggers that could not be tested, separated by commas.
--
-- * 'trtrrsResponseStatus' - -- | The response status code.
testRepositoryTriggersResponse ::
  -- | 'trtrrsResponseStatus'
  Int ->
  TestRepositoryTriggersResponse
testRepositoryTriggersResponse pResponseStatus_ =
  TestRepositoryTriggersResponse'
    { _trtrrsSuccessfulExecutions =
        Nothing,
      _trtrrsFailedExecutions = Nothing,
      _trtrrsResponseStatus = pResponseStatus_
    }

-- | The list of triggers that were successfully tested. This list provides the names of the triggers that were successfully tested, separated by commas.
trtrrsSuccessfulExecutions :: Lens' TestRepositoryTriggersResponse [Text]
trtrrsSuccessfulExecutions = lens _trtrrsSuccessfulExecutions (\s a -> s {_trtrrsSuccessfulExecutions = a}) . _Default . _Coerce

-- | The list of triggers that were not tested. This list provides the names of the triggers that could not be tested, separated by commas.
trtrrsFailedExecutions :: Lens' TestRepositoryTriggersResponse [RepositoryTriggerExecutionFailure]
trtrrsFailedExecutions = lens _trtrrsFailedExecutions (\s a -> s {_trtrrsFailedExecutions = a}) . _Default . _Coerce

-- | -- | The response status code.
trtrrsResponseStatus :: Lens' TestRepositoryTriggersResponse Int
trtrrsResponseStatus = lens _trtrrsResponseStatus (\s a -> s {_trtrrsResponseStatus = a})

instance NFData TestRepositoryTriggersResponse
