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
-- Module      : Network.AWS.SageMaker.CreateContext
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a /context/ . A context is a lineage tracking entity that represents a logical grouping of other tracking or experiment entities. Some examples are an endpoint and a model package. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html Amazon SageMaker ML Lineage Tracking> .
module Network.AWS.SageMaker.CreateContext
  ( -- * Creating a Request
    createContext,
    CreateContext,

    -- * Request Lenses
    ccTags,
    ccProperties,
    ccDescription,
    ccContextName,
    ccSource,
    ccContextType,

    -- * Destructuring the Response
    createContextResponse,
    CreateContextResponse,

    -- * Response Lenses
    ccrrsContextARN,
    ccrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createContext' smart constructor.
data CreateContext = CreateContext'
  { _ccTags ::
      !(Maybe [Tag]),
    _ccProperties :: !(Maybe (Map Text Text)),
    _ccDescription :: !(Maybe Text),
    _ccContextName :: !Text,
    _ccSource :: !ContextSource,
    _ccContextType :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccTags' - A list of tags to apply to the context.
--
-- * 'ccProperties' - A list of properties to add to the context.
--
-- * 'ccDescription' - The description of the context.
--
-- * 'ccContextName' - The name of the context. Must be unique to your account in an AWS Region.
--
-- * 'ccSource' - The source type, ID, and URI.
--
-- * 'ccContextType' - The context type.
createContext ::
  -- | 'ccContextName'
  Text ->
  -- | 'ccSource'
  ContextSource ->
  -- | 'ccContextType'
  Text ->
  CreateContext
createContext pContextName_ pSource_ pContextType_ =
  CreateContext'
    { _ccTags = Nothing,
      _ccProperties = Nothing,
      _ccDescription = Nothing,
      _ccContextName = pContextName_,
      _ccSource = pSource_,
      _ccContextType = pContextType_
    }

-- | A list of tags to apply to the context.
ccTags :: Lens' CreateContext [Tag]
ccTags = lens _ccTags (\s a -> s {_ccTags = a}) . _Default . _Coerce

-- | A list of properties to add to the context.
ccProperties :: Lens' CreateContext (HashMap Text Text)
ccProperties = lens _ccProperties (\s a -> s {_ccProperties = a}) . _Default . _Map

-- | The description of the context.
ccDescription :: Lens' CreateContext (Maybe Text)
ccDescription = lens _ccDescription (\s a -> s {_ccDescription = a})

-- | The name of the context. Must be unique to your account in an AWS Region.
ccContextName :: Lens' CreateContext Text
ccContextName = lens _ccContextName (\s a -> s {_ccContextName = a})

-- | The source type, ID, and URI.
ccSource :: Lens' CreateContext ContextSource
ccSource = lens _ccSource (\s a -> s {_ccSource = a})

-- | The context type.
ccContextType :: Lens' CreateContext Text
ccContextType = lens _ccContextType (\s a -> s {_ccContextType = a})

instance AWSRequest CreateContext where
  type Rs CreateContext = CreateContextResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateContextResponse'
            <$> (x .?> "ContextArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateContext

instance NFData CreateContext

instance ToHeaders CreateContext where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateContext" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateContext where
  toJSON CreateContext' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _ccTags,
            ("Properties" .=) <$> _ccProperties,
            ("Description" .=) <$> _ccDescription,
            Just ("ContextName" .= _ccContextName),
            Just ("Source" .= _ccSource),
            Just ("ContextType" .= _ccContextType)
          ]
      )

instance ToPath CreateContext where
  toPath = const "/"

instance ToQuery CreateContext where
  toQuery = const mempty

-- | /See:/ 'createContextResponse' smart constructor.
data CreateContextResponse = CreateContextResponse'
  { _ccrrsContextARN ::
      !(Maybe Text),
    _ccrrsResponseStatus ::
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

-- | Creates a value of 'CreateContextResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrrsContextARN' - The Amazon Resource Name (ARN) of the context.
--
-- * 'ccrrsResponseStatus' - -- | The response status code.
createContextResponse ::
  -- | 'ccrrsResponseStatus'
  Int ->
  CreateContextResponse
createContextResponse pResponseStatus_ =
  CreateContextResponse'
    { _ccrrsContextARN = Nothing,
      _ccrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the context.
ccrrsContextARN :: Lens' CreateContextResponse (Maybe Text)
ccrrsContextARN = lens _ccrrsContextARN (\s a -> s {_ccrrsContextARN = a})

-- | -- | The response status code.
ccrrsResponseStatus :: Lens' CreateContextResponse Int
ccrrsResponseStatus = lens _ccrrsResponseStatus (\s a -> s {_ccrrsResponseStatus = a})

instance NFData CreateContextResponse
