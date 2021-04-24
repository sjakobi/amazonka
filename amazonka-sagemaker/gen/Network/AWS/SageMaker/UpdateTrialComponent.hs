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
-- Module      : Network.AWS.SageMaker.UpdateTrialComponent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates one or more properties of a trial component.
module Network.AWS.SageMaker.UpdateTrialComponent
  ( -- * Creating a Request
    updateTrialComponent,
    UpdateTrialComponent,

    -- * Request Lenses
    utcOutputArtifactsToRemove,
    utcParametersToRemove,
    utcStatus,
    utcInputArtifactsToRemove,
    utcStartTime,
    utcEndTime,
    utcInputArtifacts,
    utcDisplayName,
    utcParameters,
    utcOutputArtifacts,
    utcTrialComponentName,

    -- * Destructuring the Response
    updateTrialComponentResponse,
    UpdateTrialComponentResponse,

    -- * Response Lenses
    utcrrsTrialComponentARN,
    utcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'updateTrialComponent' smart constructor.
data UpdateTrialComponent = UpdateTrialComponent'
  { _utcOutputArtifactsToRemove ::
      !(Maybe [Text]),
    _utcParametersToRemove ::
      !(Maybe [Text]),
    _utcStatus ::
      !(Maybe TrialComponentStatus),
    _utcInputArtifactsToRemove ::
      !(Maybe [Text]),
    _utcStartTime ::
      !(Maybe POSIX),
    _utcEndTime :: !(Maybe POSIX),
    _utcInputArtifacts ::
      !( Maybe
           ( Map
               Text
               TrialComponentArtifact
           )
       ),
    _utcDisplayName ::
      !(Maybe Text),
    _utcParameters ::
      !( Maybe
           ( Map
               Text
               TrialComponentParameterValue
           )
       ),
    _utcOutputArtifacts ::
      !( Maybe
           ( Map
               Text
               TrialComponentArtifact
           )
       ),
    _utcTrialComponentName ::
      !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTrialComponent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utcOutputArtifactsToRemove' - The output artifacts to remove from the component.
--
-- * 'utcParametersToRemove' - The hyperparameters to remove from the component.
--
-- * 'utcStatus' - The new status of the component.
--
-- * 'utcInputArtifactsToRemove' - The input artifacts to remove from the component.
--
-- * 'utcStartTime' - When the component started.
--
-- * 'utcEndTime' - When the component ended.
--
-- * 'utcInputArtifacts' - Replaces all of the component's input artifacts with the specified artifacts.
--
-- * 'utcDisplayName' - The name of the component as displayed. The name doesn't need to be unique. If @DisplayName@ isn't specified, @TrialComponentName@ is displayed.
--
-- * 'utcParameters' - Replaces all of the component's hyperparameters with the specified hyperparameters.
--
-- * 'utcOutputArtifacts' - Replaces all of the component's output artifacts with the specified artifacts.
--
-- * 'utcTrialComponentName' - The name of the component to update.
updateTrialComponent ::
  -- | 'utcTrialComponentName'
  Text ->
  UpdateTrialComponent
updateTrialComponent pTrialComponentName_ =
  UpdateTrialComponent'
    { _utcOutputArtifactsToRemove =
        Nothing,
      _utcParametersToRemove = Nothing,
      _utcStatus = Nothing,
      _utcInputArtifactsToRemove = Nothing,
      _utcStartTime = Nothing,
      _utcEndTime = Nothing,
      _utcInputArtifacts = Nothing,
      _utcDisplayName = Nothing,
      _utcParameters = Nothing,
      _utcOutputArtifacts = Nothing,
      _utcTrialComponentName = pTrialComponentName_
    }

-- | The output artifacts to remove from the component.
utcOutputArtifactsToRemove :: Lens' UpdateTrialComponent [Text]
utcOutputArtifactsToRemove = lens _utcOutputArtifactsToRemove (\s a -> s {_utcOutputArtifactsToRemove = a}) . _Default . _Coerce

-- | The hyperparameters to remove from the component.
utcParametersToRemove :: Lens' UpdateTrialComponent [Text]
utcParametersToRemove = lens _utcParametersToRemove (\s a -> s {_utcParametersToRemove = a}) . _Default . _Coerce

-- | The new status of the component.
utcStatus :: Lens' UpdateTrialComponent (Maybe TrialComponentStatus)
utcStatus = lens _utcStatus (\s a -> s {_utcStatus = a})

-- | The input artifacts to remove from the component.
utcInputArtifactsToRemove :: Lens' UpdateTrialComponent [Text]
utcInputArtifactsToRemove = lens _utcInputArtifactsToRemove (\s a -> s {_utcInputArtifactsToRemove = a}) . _Default . _Coerce

-- | When the component started.
utcStartTime :: Lens' UpdateTrialComponent (Maybe UTCTime)
utcStartTime = lens _utcStartTime (\s a -> s {_utcStartTime = a}) . mapping _Time

-- | When the component ended.
utcEndTime :: Lens' UpdateTrialComponent (Maybe UTCTime)
utcEndTime = lens _utcEndTime (\s a -> s {_utcEndTime = a}) . mapping _Time

-- | Replaces all of the component's input artifacts with the specified artifacts.
utcInputArtifacts :: Lens' UpdateTrialComponent (HashMap Text TrialComponentArtifact)
utcInputArtifacts = lens _utcInputArtifacts (\s a -> s {_utcInputArtifacts = a}) . _Default . _Map

-- | The name of the component as displayed. The name doesn't need to be unique. If @DisplayName@ isn't specified, @TrialComponentName@ is displayed.
utcDisplayName :: Lens' UpdateTrialComponent (Maybe Text)
utcDisplayName = lens _utcDisplayName (\s a -> s {_utcDisplayName = a})

-- | Replaces all of the component's hyperparameters with the specified hyperparameters.
utcParameters :: Lens' UpdateTrialComponent (HashMap Text TrialComponentParameterValue)
utcParameters = lens _utcParameters (\s a -> s {_utcParameters = a}) . _Default . _Map

-- | Replaces all of the component's output artifacts with the specified artifacts.
utcOutputArtifacts :: Lens' UpdateTrialComponent (HashMap Text TrialComponentArtifact)
utcOutputArtifacts = lens _utcOutputArtifacts (\s a -> s {_utcOutputArtifacts = a}) . _Default . _Map

-- | The name of the component to update.
utcTrialComponentName :: Lens' UpdateTrialComponent Text
utcTrialComponentName = lens _utcTrialComponentName (\s a -> s {_utcTrialComponentName = a})

instance AWSRequest UpdateTrialComponent where
  type
    Rs UpdateTrialComponent =
      UpdateTrialComponentResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          UpdateTrialComponentResponse'
            <$> (x .?> "TrialComponentArn") <*> (pure (fromEnum s))
      )

instance Hashable UpdateTrialComponent

instance NFData UpdateTrialComponent

instance ToHeaders UpdateTrialComponent where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.UpdateTrialComponent" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateTrialComponent where
  toJSON UpdateTrialComponent' {..} =
    object
      ( catMaybes
          [ ("OutputArtifactsToRemove" .=)
              <$> _utcOutputArtifactsToRemove,
            ("ParametersToRemove" .=) <$> _utcParametersToRemove,
            ("Status" .=) <$> _utcStatus,
            ("InputArtifactsToRemove" .=)
              <$> _utcInputArtifactsToRemove,
            ("StartTime" .=) <$> _utcStartTime,
            ("EndTime" .=) <$> _utcEndTime,
            ("InputArtifacts" .=) <$> _utcInputArtifacts,
            ("DisplayName" .=) <$> _utcDisplayName,
            ("Parameters" .=) <$> _utcParameters,
            ("OutputArtifacts" .=) <$> _utcOutputArtifacts,
            Just
              ("TrialComponentName" .= _utcTrialComponentName)
          ]
      )

instance ToPath UpdateTrialComponent where
  toPath = const "/"

instance ToQuery UpdateTrialComponent where
  toQuery = const mempty

-- | /See:/ 'updateTrialComponentResponse' smart constructor.
data UpdateTrialComponentResponse = UpdateTrialComponentResponse'
  { _utcrrsTrialComponentARN ::
      !(Maybe Text),
    _utcrrsResponseStatus ::
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

-- | Creates a value of 'UpdateTrialComponentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utcrrsTrialComponentARN' - The Amazon Resource Name (ARN) of the trial component.
--
-- * 'utcrrsResponseStatus' - -- | The response status code.
updateTrialComponentResponse ::
  -- | 'utcrrsResponseStatus'
  Int ->
  UpdateTrialComponentResponse
updateTrialComponentResponse pResponseStatus_ =
  UpdateTrialComponentResponse'
    { _utcrrsTrialComponentARN =
        Nothing,
      _utcrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the trial component.
utcrrsTrialComponentARN :: Lens' UpdateTrialComponentResponse (Maybe Text)
utcrrsTrialComponentARN = lens _utcrrsTrialComponentARN (\s a -> s {_utcrrsTrialComponentARN = a})

-- | -- | The response status code.
utcrrsResponseStatus :: Lens' UpdateTrialComponentResponse Int
utcrrsResponseStatus = lens _utcrrsResponseStatus (\s a -> s {_utcrrsResponseStatus = a})

instance NFData UpdateTrialComponentResponse
