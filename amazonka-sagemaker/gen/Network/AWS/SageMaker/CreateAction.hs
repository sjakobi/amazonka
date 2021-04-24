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
-- Module      : Network.AWS.SageMaker.CreateAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an /action/ . An action is a lineage tracking entity that represents an action or activity. For example, a model deployment or an HPO job. Generally, an action involves at least one input or output artifact. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html Amazon SageMaker ML Lineage Tracking> .
module Network.AWS.SageMaker.CreateAction
  ( -- * Creating a Request
    createAction,
    CreateAction,

    -- * Request Lenses
    caStatus,
    caMetadataProperties,
    caTags,
    caProperties,
    caDescription,
    caActionName,
    caSource,
    caActionType,

    -- * Destructuring the Response
    createActionResponse,
    CreateActionResponse,

    -- * Response Lenses
    carrsActionARN,
    carrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createAction' smart constructor.
data CreateAction = CreateAction'
  { _caStatus ::
      !(Maybe ActionStatus),
    _caMetadataProperties ::
      !(Maybe MetadataProperties),
    _caTags :: !(Maybe [Tag]),
    _caProperties :: !(Maybe (Map Text Text)),
    _caDescription :: !(Maybe Text),
    _caActionName :: !Text,
    _caSource :: !ActionSource,
    _caActionType :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caStatus' - The status of the action.
--
-- * 'caMetadataProperties' - Undocumented member.
--
-- * 'caTags' - A list of tags to apply to the action.
--
-- * 'caProperties' - A list of properties to add to the action.
--
-- * 'caDescription' - The description of the action.
--
-- * 'caActionName' - The name of the action. Must be unique to your account in an AWS Region.
--
-- * 'caSource' - The source type, ID, and URI.
--
-- * 'caActionType' - The action type.
createAction ::
  -- | 'caActionName'
  Text ->
  -- | 'caSource'
  ActionSource ->
  -- | 'caActionType'
  Text ->
  CreateAction
createAction pActionName_ pSource_ pActionType_ =
  CreateAction'
    { _caStatus = Nothing,
      _caMetadataProperties = Nothing,
      _caTags = Nothing,
      _caProperties = Nothing,
      _caDescription = Nothing,
      _caActionName = pActionName_,
      _caSource = pSource_,
      _caActionType = pActionType_
    }

-- | The status of the action.
caStatus :: Lens' CreateAction (Maybe ActionStatus)
caStatus = lens _caStatus (\s a -> s {_caStatus = a})

-- | Undocumented member.
caMetadataProperties :: Lens' CreateAction (Maybe MetadataProperties)
caMetadataProperties = lens _caMetadataProperties (\s a -> s {_caMetadataProperties = a})

-- | A list of tags to apply to the action.
caTags :: Lens' CreateAction [Tag]
caTags = lens _caTags (\s a -> s {_caTags = a}) . _Default . _Coerce

-- | A list of properties to add to the action.
caProperties :: Lens' CreateAction (HashMap Text Text)
caProperties = lens _caProperties (\s a -> s {_caProperties = a}) . _Default . _Map

-- | The description of the action.
caDescription :: Lens' CreateAction (Maybe Text)
caDescription = lens _caDescription (\s a -> s {_caDescription = a})

-- | The name of the action. Must be unique to your account in an AWS Region.
caActionName :: Lens' CreateAction Text
caActionName = lens _caActionName (\s a -> s {_caActionName = a})

-- | The source type, ID, and URI.
caSource :: Lens' CreateAction ActionSource
caSource = lens _caSource (\s a -> s {_caSource = a})

-- | The action type.
caActionType :: Lens' CreateAction Text
caActionType = lens _caActionType (\s a -> s {_caActionType = a})

instance AWSRequest CreateAction where
  type Rs CreateAction = CreateActionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateActionResponse'
            <$> (x .?> "ActionArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateAction

instance NFData CreateAction

instance ToHeaders CreateAction where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateAction" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateAction where
  toJSON CreateAction' {..} =
    object
      ( catMaybes
          [ ("Status" .=) <$> _caStatus,
            ("MetadataProperties" .=) <$> _caMetadataProperties,
            ("Tags" .=) <$> _caTags,
            ("Properties" .=) <$> _caProperties,
            ("Description" .=) <$> _caDescription,
            Just ("ActionName" .= _caActionName),
            Just ("Source" .= _caSource),
            Just ("ActionType" .= _caActionType)
          ]
      )

instance ToPath CreateAction where
  toPath = const "/"

instance ToQuery CreateAction where
  toQuery = const mempty

-- | /See:/ 'createActionResponse' smart constructor.
data CreateActionResponse = CreateActionResponse'
  { _carrsActionARN ::
      !(Maybe Text),
    _carrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateActionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'carrsActionARN' - The Amazon Resource Name (ARN) of the action.
--
-- * 'carrsResponseStatus' - -- | The response status code.
createActionResponse ::
  -- | 'carrsResponseStatus'
  Int ->
  CreateActionResponse
createActionResponse pResponseStatus_ =
  CreateActionResponse'
    { _carrsActionARN = Nothing,
      _carrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the action.
carrsActionARN :: Lens' CreateActionResponse (Maybe Text)
carrsActionARN = lens _carrsActionARN (\s a -> s {_carrsActionARN = a})

-- | -- | The response status code.
carrsResponseStatus :: Lens' CreateActionResponse Int
carrsResponseStatus = lens _carrsResponseStatus (\s a -> s {_carrsResponseStatus = a})

instance NFData CreateActionResponse
