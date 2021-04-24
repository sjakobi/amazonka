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
-- Module      : Network.AWS.SageMaker.CreateExperiment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an SageMaker /experiment/ . An experiment is a collection of /trials/ that are observed, compared and evaluated as a group. A trial is a set of steps, called /trial components/ , that produce a machine learning model.
--
--
-- The goal of an experiment is to determine the components that produce the best model. Multiple trials are performed, each one isolating and measuring the impact of a change to one or more inputs, while keeping the remaining inputs constant.
--
-- When you use Amazon SageMaker Studio or the Amazon SageMaker Python SDK, all experiments, trials, and trial components are automatically tracked, logged, and indexed. When you use the AWS SDK for Python (Boto), you must use the logging APIs provided by the SDK.
--
-- You can add tags to experiments, trials, trial components and then use the 'Search' API to search for the tags.
--
-- To add a description to an experiment, specify the optional @Description@ parameter. To add a description later, or to change the description, call the 'UpdateExperiment' API.
--
-- To get a list of all your experiments, call the 'ListExperiments' API. To view an experiment's properties, call the 'DescribeExperiment' API. To get a list of all the trials associated with an experiment, call the 'ListTrials' API. To create a trial call the 'CreateTrial' API.
module Network.AWS.SageMaker.CreateExperiment
  ( -- * Creating a Request
    createExperiment,
    CreateExperiment,

    -- * Request Lenses
    ceeTags,
    ceeDescription,
    ceeDisplayName,
    ceeExperimentName,

    -- * Destructuring the Response
    createExperimentResponse,
    CreateExperimentResponse,

    -- * Response Lenses
    cerersExperimentARN,
    cerersResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createExperiment' smart constructor.
data CreateExperiment = CreateExperiment'
  { _ceeTags ::
      !(Maybe [Tag]),
    _ceeDescription :: !(Maybe Text),
    _ceeDisplayName :: !(Maybe Text),
    _ceeExperimentName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateExperiment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceeTags' - A list of tags to associate with the experiment. You can use 'Search' API to search on the tags.
--
-- * 'ceeDescription' - The description of the experiment.
--
-- * 'ceeDisplayName' - The name of the experiment as displayed. The name doesn't need to be unique. If you don't specify @DisplayName@ , the value in @ExperimentName@ is displayed.
--
-- * 'ceeExperimentName' - The name of the experiment. The name must be unique in your AWS account and is not case-sensitive.
createExperiment ::
  -- | 'ceeExperimentName'
  Text ->
  CreateExperiment
createExperiment pExperimentName_ =
  CreateExperiment'
    { _ceeTags = Nothing,
      _ceeDescription = Nothing,
      _ceeDisplayName = Nothing,
      _ceeExperimentName = pExperimentName_
    }

-- | A list of tags to associate with the experiment. You can use 'Search' API to search on the tags.
ceeTags :: Lens' CreateExperiment [Tag]
ceeTags = lens _ceeTags (\s a -> s {_ceeTags = a}) . _Default . _Coerce

-- | The description of the experiment.
ceeDescription :: Lens' CreateExperiment (Maybe Text)
ceeDescription = lens _ceeDescription (\s a -> s {_ceeDescription = a})

-- | The name of the experiment as displayed. The name doesn't need to be unique. If you don't specify @DisplayName@ , the value in @ExperimentName@ is displayed.
ceeDisplayName :: Lens' CreateExperiment (Maybe Text)
ceeDisplayName = lens _ceeDisplayName (\s a -> s {_ceeDisplayName = a})

-- | The name of the experiment. The name must be unique in your AWS account and is not case-sensitive.
ceeExperimentName :: Lens' CreateExperiment Text
ceeExperimentName = lens _ceeExperimentName (\s a -> s {_ceeExperimentName = a})

instance AWSRequest CreateExperiment where
  type Rs CreateExperiment = CreateExperimentResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateExperimentResponse'
            <$> (x .?> "ExperimentArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateExperiment

instance NFData CreateExperiment

instance ToHeaders CreateExperiment where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateExperiment" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateExperiment where
  toJSON CreateExperiment' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _ceeTags,
            ("Description" .=) <$> _ceeDescription,
            ("DisplayName" .=) <$> _ceeDisplayName,
            Just ("ExperimentName" .= _ceeExperimentName)
          ]
      )

instance ToPath CreateExperiment where
  toPath = const "/"

instance ToQuery CreateExperiment where
  toQuery = const mempty

-- | /See:/ 'createExperimentResponse' smart constructor.
data CreateExperimentResponse = CreateExperimentResponse'
  { _cerersExperimentARN ::
      !(Maybe Text),
    _cerersResponseStatus ::
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

-- | Creates a value of 'CreateExperimentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cerersExperimentARN' - The Amazon Resource Name (ARN) of the experiment.
--
-- * 'cerersResponseStatus' - -- | The response status code.
createExperimentResponse ::
  -- | 'cerersResponseStatus'
  Int ->
  CreateExperimentResponse
createExperimentResponse pResponseStatus_ =
  CreateExperimentResponse'
    { _cerersExperimentARN =
        Nothing,
      _cerersResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the experiment.
cerersExperimentARN :: Lens' CreateExperimentResponse (Maybe Text)
cerersExperimentARN = lens _cerersExperimentARN (\s a -> s {_cerersExperimentARN = a})

-- | -- | The response status code.
cerersResponseStatus :: Lens' CreateExperimentResponse Int
cerersResponseStatus = lens _cerersResponseStatus (\s a -> s {_cerersResponseStatus = a})

instance NFData CreateExperimentResponse
