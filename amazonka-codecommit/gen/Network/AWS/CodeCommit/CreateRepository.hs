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
-- Module      : Network.AWS.CodeCommit.CreateRepository
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new, empty repository.
module Network.AWS.CodeCommit.CreateRepository
  ( -- * Creating a Request
    createRepository,
    CreateRepository,

    -- * Request Lenses
    crRepositoryDescription,
    crTags,
    crRepositoryName,

    -- * Destructuring the Response
    createRepositoryResponse,
    CreateRepositoryResponse,

    -- * Response Lenses
    crrrsRepositoryMetadata,
    crrrsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a create repository operation.
--
--
--
-- /See:/ 'createRepository' smart constructor.
data CreateRepository = CreateRepository'
  { _crRepositoryDescription ::
      !(Maybe Text),
    _crTags :: !(Maybe (Map Text Text)),
    _crRepositoryName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateRepository' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crRepositoryDescription' - A comment or description about the new repository.
--
-- * 'crTags' - One or more tag key-value pairs to use when tagging this repository.
--
-- * 'crRepositoryName' - The name of the new repository to be created.
createRepository ::
  -- | 'crRepositoryName'
  Text ->
  CreateRepository
createRepository pRepositoryName_ =
  CreateRepository'
    { _crRepositoryDescription =
        Nothing,
      _crTags = Nothing,
      _crRepositoryName = pRepositoryName_
    }

-- | A comment or description about the new repository.
crRepositoryDescription :: Lens' CreateRepository (Maybe Text)
crRepositoryDescription = lens _crRepositoryDescription (\s a -> s {_crRepositoryDescription = a})

-- | One or more tag key-value pairs to use when tagging this repository.
crTags :: Lens' CreateRepository (HashMap Text Text)
crTags = lens _crTags (\s a -> s {_crTags = a}) . _Default . _Map

-- | The name of the new repository to be created.
crRepositoryName :: Lens' CreateRepository Text
crRepositoryName = lens _crRepositoryName (\s a -> s {_crRepositoryName = a})

instance AWSRequest CreateRepository where
  type Rs CreateRepository = CreateRepositoryResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          CreateRepositoryResponse'
            <$> (x .?> "repositoryMetadata") <*> (pure (fromEnum s))
      )

instance Hashable CreateRepository

instance NFData CreateRepository

instance ToHeaders CreateRepository where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.CreateRepository" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateRepository where
  toJSON CreateRepository' {..} =
    object
      ( catMaybes
          [ ("repositoryDescription" .=)
              <$> _crRepositoryDescription,
            ("tags" .=) <$> _crTags,
            Just ("repositoryName" .= _crRepositoryName)
          ]
      )

instance ToPath CreateRepository where
  toPath = const "/"

instance ToQuery CreateRepository where
  toQuery = const mempty

-- | Represents the output of a create repository operation.
--
--
--
-- /See:/ 'createRepositoryResponse' smart constructor.
data CreateRepositoryResponse = CreateRepositoryResponse'
  { _crrrsRepositoryMetadata ::
      !( Maybe
           RepositoryMetadata
       ),
    _crrrsResponseStatus ::
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

-- | Creates a value of 'CreateRepositoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crrrsRepositoryMetadata' - Information about the newly created repository.
--
-- * 'crrrsResponseStatus' - -- | The response status code.
createRepositoryResponse ::
  -- | 'crrrsResponseStatus'
  Int ->
  CreateRepositoryResponse
createRepositoryResponse pResponseStatus_ =
  CreateRepositoryResponse'
    { _crrrsRepositoryMetadata =
        Nothing,
      _crrrsResponseStatus = pResponseStatus_
    }

-- | Information about the newly created repository.
crrrsRepositoryMetadata :: Lens' CreateRepositoryResponse (Maybe RepositoryMetadata)
crrrsRepositoryMetadata = lens _crrrsRepositoryMetadata (\s a -> s {_crrrsRepositoryMetadata = a})

-- | -- | The response status code.
crrrsResponseStatus :: Lens' CreateRepositoryResponse Int
crrrsResponseStatus = lens _crrrsResponseStatus (\s a -> s {_crrrsResponseStatus = a})

instance NFData CreateRepositoryResponse
