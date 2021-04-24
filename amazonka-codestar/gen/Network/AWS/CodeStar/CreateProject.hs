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
-- Module      : Network.AWS.CodeStar.CreateProject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a project, including project resources. This action creates a project based on a submitted project request. A set of source code files and a toolchain template file can be included with the project request. If these are not provided, an empty project is created.
module Network.AWS.CodeStar.CreateProject
  ( -- * Creating a Request
    createProject,
    CreateProject,

    -- * Request Lenses
    cpSourceCode,
    cpTags,
    cpDescription,
    cpClientRequestToken,
    cpToolchain,
    cpName,
    cpId,

    -- * Destructuring the Response
    createProjectResponse,
    CreateProjectResponse,

    -- * Response Lenses
    cprrsClientRequestToken,
    cprrsProjectTemplateId,
    cprrsResponseStatus,
    cprrsId,
    cprrsArn,
  )
where

import Network.AWS.CodeStar.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createProject' smart constructor.
data CreateProject = CreateProject'
  { _cpSourceCode ::
      !(Maybe [Code]),
    _cpTags :: !(Maybe (Map Text Text)),
    _cpDescription :: !(Maybe (Sensitive Text)),
    _cpClientRequestToken :: !(Maybe Text),
    _cpToolchain :: !(Maybe Toolchain),
    _cpName :: !(Sensitive Text),
    _cpId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpSourceCode' - A list of the Code objects submitted with the project request. If this parameter is specified, the request must also include the toolchain parameter.
--
-- * 'cpTags' - The tags created for the project.
--
-- * 'cpDescription' - The description of the project, if any.
--
-- * 'cpClientRequestToken' - A user- or system-generated token that identifies the entity that requested project creation. This token can be used to repeat the request.
--
-- * 'cpToolchain' - The name of the toolchain template file submitted with the project request. If this parameter is specified, the request must also include the sourceCode parameter.
--
-- * 'cpName' - The display name for the project to be created in AWS CodeStar.
--
-- * 'cpId' - The ID of the project to be created in AWS CodeStar.
createProject ::
  -- | 'cpName'
  Text ->
  -- | 'cpId'
  Text ->
  CreateProject
createProject pName_ pId_ =
  CreateProject'
    { _cpSourceCode = Nothing,
      _cpTags = Nothing,
      _cpDescription = Nothing,
      _cpClientRequestToken = Nothing,
      _cpToolchain = Nothing,
      _cpName = _Sensitive # pName_,
      _cpId = pId_
    }

-- | A list of the Code objects submitted with the project request. If this parameter is specified, the request must also include the toolchain parameter.
cpSourceCode :: Lens' CreateProject [Code]
cpSourceCode = lens _cpSourceCode (\s a -> s {_cpSourceCode = a}) . _Default . _Coerce

-- | The tags created for the project.
cpTags :: Lens' CreateProject (HashMap Text Text)
cpTags = lens _cpTags (\s a -> s {_cpTags = a}) . _Default . _Map

-- | The description of the project, if any.
cpDescription :: Lens' CreateProject (Maybe Text)
cpDescription = lens _cpDescription (\s a -> s {_cpDescription = a}) . mapping _Sensitive

-- | A user- or system-generated token that identifies the entity that requested project creation. This token can be used to repeat the request.
cpClientRequestToken :: Lens' CreateProject (Maybe Text)
cpClientRequestToken = lens _cpClientRequestToken (\s a -> s {_cpClientRequestToken = a})

-- | The name of the toolchain template file submitted with the project request. If this parameter is specified, the request must also include the sourceCode parameter.
cpToolchain :: Lens' CreateProject (Maybe Toolchain)
cpToolchain = lens _cpToolchain (\s a -> s {_cpToolchain = a})

-- | The display name for the project to be created in AWS CodeStar.
cpName :: Lens' CreateProject Text
cpName = lens _cpName (\s a -> s {_cpName = a}) . _Sensitive

-- | The ID of the project to be created in AWS CodeStar.
cpId :: Lens' CreateProject Text
cpId = lens _cpId (\s a -> s {_cpId = a})

instance AWSRequest CreateProject where
  type Rs CreateProject = CreateProjectResponse
  request = postJSON codeStar
  response =
    receiveJSON
      ( \s h x ->
          CreateProjectResponse'
            <$> (x .?> "clientRequestToken")
            <*> (x .?> "projectTemplateId")
            <*> (pure (fromEnum s))
            <*> (x .:> "id")
            <*> (x .:> "arn")
      )

instance Hashable CreateProject

instance NFData CreateProject

instance ToHeaders CreateProject where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeStar_20170419.CreateProject" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateProject where
  toJSON CreateProject' {..} =
    object
      ( catMaybes
          [ ("sourceCode" .=) <$> _cpSourceCode,
            ("tags" .=) <$> _cpTags,
            ("description" .=) <$> _cpDescription,
            ("clientRequestToken" .=) <$> _cpClientRequestToken,
            ("toolchain" .=) <$> _cpToolchain,
            Just ("name" .= _cpName),
            Just ("id" .= _cpId)
          ]
      )

instance ToPath CreateProject where
  toPath = const "/"

instance ToQuery CreateProject where
  toQuery = const mempty

-- | /See:/ 'createProjectResponse' smart constructor.
data CreateProjectResponse = CreateProjectResponse'
  { _cprrsClientRequestToken ::
      !(Maybe Text),
    _cprrsProjectTemplateId ::
      !(Maybe Text),
    _cprrsResponseStatus ::
      !Int,
    _cprrsId :: !Text,
    _cprrsArn :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateProjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cprrsClientRequestToken' - A user- or system-generated token that identifies the entity that requested project creation.
--
-- * 'cprrsProjectTemplateId' - Reserved for future use.
--
-- * 'cprrsResponseStatus' - -- | The response status code.
--
-- * 'cprrsId' - The ID of the project.
--
-- * 'cprrsArn' - The Amazon Resource Name (ARN) of the created project.
createProjectResponse ::
  -- | 'cprrsResponseStatus'
  Int ->
  -- | 'cprrsId'
  Text ->
  -- | 'cprrsArn'
  Text ->
  CreateProjectResponse
createProjectResponse pResponseStatus_ pId_ pArn_ =
  CreateProjectResponse'
    { _cprrsClientRequestToken =
        Nothing,
      _cprrsProjectTemplateId = Nothing,
      _cprrsResponseStatus = pResponseStatus_,
      _cprrsId = pId_,
      _cprrsArn = pArn_
    }

-- | A user- or system-generated token that identifies the entity that requested project creation.
cprrsClientRequestToken :: Lens' CreateProjectResponse (Maybe Text)
cprrsClientRequestToken = lens _cprrsClientRequestToken (\s a -> s {_cprrsClientRequestToken = a})

-- | Reserved for future use.
cprrsProjectTemplateId :: Lens' CreateProjectResponse (Maybe Text)
cprrsProjectTemplateId = lens _cprrsProjectTemplateId (\s a -> s {_cprrsProjectTemplateId = a})

-- | -- | The response status code.
cprrsResponseStatus :: Lens' CreateProjectResponse Int
cprrsResponseStatus = lens _cprrsResponseStatus (\s a -> s {_cprrsResponseStatus = a})

-- | The ID of the project.
cprrsId :: Lens' CreateProjectResponse Text
cprrsId = lens _cprrsId (\s a -> s {_cprrsId = a})

-- | The Amazon Resource Name (ARN) of the created project.
cprrsArn :: Lens' CreateProjectResponse Text
cprrsArn = lens _cprrsArn (\s a -> s {_cprrsArn = a})

instance NFData CreateProjectResponse
