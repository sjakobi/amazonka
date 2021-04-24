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
-- Module      : Network.AWS.MachineLearning.GetMLModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an @MLModel@ that includes detailed metadata, data source information, and the current status of the @MLModel@ .
--
--
-- @GetMLModel@ provides results in normal or verbose format.
module Network.AWS.MachineLearning.GetMLModel
  ( -- * Creating a Request
    getMLModel,
    GetMLModel,

    -- * Request Lenses
    gmlmVerbose,
    gmlmMLModelId,

    -- * Destructuring the Response
    getMLModelResponse,
    GetMLModelResponse,

    -- * Response Lenses
    gmlmrrsStatus,
    gmlmrrsStartedAt,
    gmlmrrsSchema,
    gmlmrrsMessage,
    gmlmrrsRecipe,
    gmlmrrsEndpointInfo,
    gmlmrrsScoreThresholdLastUpdatedAt,
    gmlmrrsCreatedAt,
    gmlmrrsTrainingParameters,
    gmlmrrsFinishedAt,
    gmlmrrsScoreThreshold,
    gmlmrrsCreatedByIAMUser,
    gmlmrrsName,
    gmlmrrsMLModelType,
    gmlmrrsMLModelId,
    gmlmrrsSizeInBytes,
    gmlmrrsInputDataLocationS3,
    gmlmrrsComputeTime,
    gmlmrrsTrainingDataSourceId,
    gmlmrrsLastUpdatedAt,
    gmlmrrsLogURI,
    gmlmrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getMLModel' smart constructor.
data GetMLModel = GetMLModel'
  { _gmlmVerbose ::
      !(Maybe Bool),
    _gmlmMLModelId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetMLModel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmlmVerbose' - Specifies whether the @GetMLModel@ operation should return @Recipe@ . If true, @Recipe@ is returned. If false, @Recipe@ is not returned.
--
-- * 'gmlmMLModelId' - The ID assigned to the @MLModel@ at creation.
getMLModel ::
  -- | 'gmlmMLModelId'
  Text ->
  GetMLModel
getMLModel pMLModelId_ =
  GetMLModel'
    { _gmlmVerbose = Nothing,
      _gmlmMLModelId = pMLModelId_
    }

-- | Specifies whether the @GetMLModel@ operation should return @Recipe@ . If true, @Recipe@ is returned. If false, @Recipe@ is not returned.
gmlmVerbose :: Lens' GetMLModel (Maybe Bool)
gmlmVerbose = lens _gmlmVerbose (\s a -> s {_gmlmVerbose = a})

-- | The ID assigned to the @MLModel@ at creation.
gmlmMLModelId :: Lens' GetMLModel Text
gmlmMLModelId = lens _gmlmMLModelId (\s a -> s {_gmlmMLModelId = a})

instance AWSRequest GetMLModel where
  type Rs GetMLModel = GetMLModelResponse
  request = postJSON machineLearning
  response =
    receiveJSON
      ( \s h x ->
          GetMLModelResponse'
            <$> (x .?> "Status")
            <*> (x .?> "StartedAt")
            <*> (x .?> "Schema")
            <*> (x .?> "Message")
            <*> (x .?> "Recipe")
            <*> (x .?> "EndpointInfo")
            <*> (x .?> "ScoreThresholdLastUpdatedAt")
            <*> (x .?> "CreatedAt")
            <*> (x .?> "TrainingParameters" .!@ mempty)
            <*> (x .?> "FinishedAt")
            <*> (x .?> "ScoreThreshold")
            <*> (x .?> "CreatedByIamUser")
            <*> (x .?> "Name")
            <*> (x .?> "MLModelType")
            <*> (x .?> "MLModelId")
            <*> (x .?> "SizeInBytes")
            <*> (x .?> "InputDataLocationS3")
            <*> (x .?> "ComputeTime")
            <*> (x .?> "TrainingDataSourceId")
            <*> (x .?> "LastUpdatedAt")
            <*> (x .?> "LogUri")
            <*> (pure (fromEnum s))
      )

instance Hashable GetMLModel

instance NFData GetMLModel

instance ToHeaders GetMLModel where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonML_20141212.GetMLModel" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetMLModel where
  toJSON GetMLModel' {..} =
    object
      ( catMaybes
          [ ("Verbose" .=) <$> _gmlmVerbose,
            Just ("MLModelId" .= _gmlmMLModelId)
          ]
      )

instance ToPath GetMLModel where
  toPath = const "/"

instance ToQuery GetMLModel where
  toQuery = const mempty

-- | Represents the output of a @GetMLModel@ operation, and provides detailed information about a @MLModel@ .
--
--
--
-- /See:/ 'getMLModelResponse' smart constructor.
data GetMLModelResponse = GetMLModelResponse'
  { _gmlmrrsStatus ::
      !(Maybe EntityStatus),
    _gmlmrrsStartedAt ::
      !(Maybe POSIX),
    _gmlmrrsSchema :: !(Maybe Text),
    _gmlmrrsMessage :: !(Maybe Text),
    _gmlmrrsRecipe :: !(Maybe Text),
    _gmlmrrsEndpointInfo ::
      !(Maybe RealtimeEndpointInfo),
    _gmlmrrsScoreThresholdLastUpdatedAt ::
      !(Maybe POSIX),
    _gmlmrrsCreatedAt ::
      !(Maybe POSIX),
    _gmlmrrsTrainingParameters ::
      !(Maybe (Map Text Text)),
    _gmlmrrsFinishedAt ::
      !(Maybe POSIX),
    _gmlmrrsScoreThreshold ::
      !(Maybe Double),
    _gmlmrrsCreatedByIAMUser ::
      !(Maybe Text),
    _gmlmrrsName :: !(Maybe Text),
    _gmlmrrsMLModelType ::
      !(Maybe MLModelType),
    _gmlmrrsMLModelId ::
      !(Maybe Text),
    _gmlmrrsSizeInBytes ::
      !(Maybe Integer),
    _gmlmrrsInputDataLocationS3 ::
      !(Maybe Text),
    _gmlmrrsComputeTime ::
      !(Maybe Integer),
    _gmlmrrsTrainingDataSourceId ::
      !(Maybe Text),
    _gmlmrrsLastUpdatedAt ::
      !(Maybe POSIX),
    _gmlmrrsLogURI :: !(Maybe Text),
    _gmlmrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetMLModelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmlmrrsStatus' - The current status of the @MLModel@ . This element can have one of the following values:     * @PENDING@ - Amazon Machine Learning (Amazon ML) submitted a request to describe a @MLModel@ .    * @INPROGRESS@ - The request is processing.    * @FAILED@ - The request did not run to completion. The ML model isn't usable.    * @COMPLETED@ - The request completed successfully.    * @DELETED@ - The @MLModel@ is marked as deleted. It isn't usable.
--
-- * 'gmlmrrsStartedAt' - The epoch time when Amazon Machine Learning marked the @MLModel@ as @INPROGRESS@ . @StartedAt@ isn't available if the @MLModel@ is in the @PENDING@ state.
--
-- * 'gmlmrrsSchema' - The schema used by all of the data files referenced by the @DataSource@ .
--
-- * 'gmlmrrsMessage' - A description of the most recent details about accessing the @MLModel@ .
--
-- * 'gmlmrrsRecipe' - The recipe to use when training the @MLModel@ . The @Recipe@ provides detailed information about the observation data to use during training, and manipulations to perform on the observation data during training.
--
-- * 'gmlmrrsEndpointInfo' - The current endpoint of the @MLModel@
--
-- * 'gmlmrrsScoreThresholdLastUpdatedAt' - The time of the most recent edit to the @ScoreThreshold@ . The time is expressed in epoch time.
--
-- * 'gmlmrrsCreatedAt' - The time that the @MLModel@ was created. The time is expressed in epoch time.
--
-- * 'gmlmrrsTrainingParameters' - A list of the training parameters in the @MLModel@ . The list is implemented as a map of key-value pairs. The following is the current set of training parameters:      * @sgd.maxMLModelSizeInBytes@ - The maximum allowed size of the model. Depending on the input data, the size of the model might affect its performance. The value is an integer that ranges from @100000@ to @2147483648@ . The default value is @33554432@ .     * @sgd.maxPasses@ - The number of times that the training process traverses the observations to build the @MLModel@ . The value is an integer that ranges from @1@ to @10000@ . The default value is @10@ .     * @sgd.shuffleType@ - Whether Amazon ML shuffles the training data. Shuffling data improves a model's ability to find the optimal solution for a variety of data types. The valid values are @auto@ and @none@ . The default value is @none@ . We strongly recommend that you shuffle your data.     * @sgd.l1RegularizationAmount@ - The coefficient regularization L1 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to zero, resulting in a sparse feature set. If you use this parameter, start by specifying a small value, such as @1.0E-08@ . The value is a double that ranges from @0@ to @MAX_DOUBLE@ . The default is to not use L1 normalization. This parameter can't be used when @L2@ is specified. Use this parameter sparingly.     * @sgd.l2RegularizationAmount@ - The coefficient regularization L2 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to small, nonzero values. If you use this parameter, start by specifying a small value, such as @1.0E-08@ . The value is a double that ranges from @0@ to @MAX_DOUBLE@ . The default is to not use L2 normalization. This parameter can't be used when @L1@ is specified. Use this parameter sparingly.
--
-- * 'gmlmrrsFinishedAt' - The epoch time when Amazon Machine Learning marked the @MLModel@ as @COMPLETED@ or @FAILED@ . @FinishedAt@ is only available when the @MLModel@ is in the @COMPLETED@ or @FAILED@ state.
--
-- * 'gmlmrrsScoreThreshold' - The scoring threshold is used in binary classification @MLModel@ models. It marks the boundary between a positive prediction and a negative prediction. Output values greater than or equal to the threshold receive a positive result from the MLModel, such as @true@ . Output values less than the threshold receive a negative response from the MLModel, such as @false@ .
--
-- * 'gmlmrrsCreatedByIAMUser' - The AWS user account from which the @MLModel@ was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.
--
-- * 'gmlmrrsName' - A user-supplied name or description of the @MLModel@ .
--
-- * 'gmlmrrsMLModelType' - Identifies the @MLModel@ category. The following are the available types:      * REGRESSION -- Produces a numeric result. For example, "What price should a house be listed at?"    * BINARY -- Produces one of two possible results. For example, "Is this an e-commerce website?"    * MULTICLASS -- Produces one of several possible results. For example, "Is this a HIGH, LOW or MEDIUM risk trade?"
--
-- * 'gmlmrrsMLModelId' - The MLModel ID, which is same as the @MLModelId@ in the request.
--
-- * 'gmlmrrsSizeInBytes' - Undocumented member.
--
-- * 'gmlmrrsInputDataLocationS3' - The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).
--
-- * 'gmlmrrsComputeTime' - The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the @MLModel@ , normalized and scaled on computation resources. @ComputeTime@ is only available if the @MLModel@ is in the @COMPLETED@ state.
--
-- * 'gmlmrrsTrainingDataSourceId' - The ID of the training @DataSource@ .
--
-- * 'gmlmrrsLastUpdatedAt' - The time of the most recent edit to the @MLModel@ . The time is expressed in epoch time.
--
-- * 'gmlmrrsLogURI' - A link to the file that contains logs of the @CreateMLModel@ operation.
--
-- * 'gmlmrrsResponseStatus' - -- | The response status code.
getMLModelResponse ::
  -- | 'gmlmrrsResponseStatus'
  Int ->
  GetMLModelResponse
getMLModelResponse pResponseStatus_ =
  GetMLModelResponse'
    { _gmlmrrsStatus = Nothing,
      _gmlmrrsStartedAt = Nothing,
      _gmlmrrsSchema = Nothing,
      _gmlmrrsMessage = Nothing,
      _gmlmrrsRecipe = Nothing,
      _gmlmrrsEndpointInfo = Nothing,
      _gmlmrrsScoreThresholdLastUpdatedAt = Nothing,
      _gmlmrrsCreatedAt = Nothing,
      _gmlmrrsTrainingParameters = Nothing,
      _gmlmrrsFinishedAt = Nothing,
      _gmlmrrsScoreThreshold = Nothing,
      _gmlmrrsCreatedByIAMUser = Nothing,
      _gmlmrrsName = Nothing,
      _gmlmrrsMLModelType = Nothing,
      _gmlmrrsMLModelId = Nothing,
      _gmlmrrsSizeInBytes = Nothing,
      _gmlmrrsInputDataLocationS3 = Nothing,
      _gmlmrrsComputeTime = Nothing,
      _gmlmrrsTrainingDataSourceId = Nothing,
      _gmlmrrsLastUpdatedAt = Nothing,
      _gmlmrrsLogURI = Nothing,
      _gmlmrrsResponseStatus = pResponseStatus_
    }

-- | The current status of the @MLModel@ . This element can have one of the following values:     * @PENDING@ - Amazon Machine Learning (Amazon ML) submitted a request to describe a @MLModel@ .    * @INPROGRESS@ - The request is processing.    * @FAILED@ - The request did not run to completion. The ML model isn't usable.    * @COMPLETED@ - The request completed successfully.    * @DELETED@ - The @MLModel@ is marked as deleted. It isn't usable.
gmlmrrsStatus :: Lens' GetMLModelResponse (Maybe EntityStatus)
gmlmrrsStatus = lens _gmlmrrsStatus (\s a -> s {_gmlmrrsStatus = a})

-- | The epoch time when Amazon Machine Learning marked the @MLModel@ as @INPROGRESS@ . @StartedAt@ isn't available if the @MLModel@ is in the @PENDING@ state.
gmlmrrsStartedAt :: Lens' GetMLModelResponse (Maybe UTCTime)
gmlmrrsStartedAt = lens _gmlmrrsStartedAt (\s a -> s {_gmlmrrsStartedAt = a}) . mapping _Time

-- | The schema used by all of the data files referenced by the @DataSource@ .
gmlmrrsSchema :: Lens' GetMLModelResponse (Maybe Text)
gmlmrrsSchema = lens _gmlmrrsSchema (\s a -> s {_gmlmrrsSchema = a})

-- | A description of the most recent details about accessing the @MLModel@ .
gmlmrrsMessage :: Lens' GetMLModelResponse (Maybe Text)
gmlmrrsMessage = lens _gmlmrrsMessage (\s a -> s {_gmlmrrsMessage = a})

-- | The recipe to use when training the @MLModel@ . The @Recipe@ provides detailed information about the observation data to use during training, and manipulations to perform on the observation data during training.
gmlmrrsRecipe :: Lens' GetMLModelResponse (Maybe Text)
gmlmrrsRecipe = lens _gmlmrrsRecipe (\s a -> s {_gmlmrrsRecipe = a})

-- | The current endpoint of the @MLModel@
gmlmrrsEndpointInfo :: Lens' GetMLModelResponse (Maybe RealtimeEndpointInfo)
gmlmrrsEndpointInfo = lens _gmlmrrsEndpointInfo (\s a -> s {_gmlmrrsEndpointInfo = a})

-- | The time of the most recent edit to the @ScoreThreshold@ . The time is expressed in epoch time.
gmlmrrsScoreThresholdLastUpdatedAt :: Lens' GetMLModelResponse (Maybe UTCTime)
gmlmrrsScoreThresholdLastUpdatedAt = lens _gmlmrrsScoreThresholdLastUpdatedAt (\s a -> s {_gmlmrrsScoreThresholdLastUpdatedAt = a}) . mapping _Time

-- | The time that the @MLModel@ was created. The time is expressed in epoch time.
gmlmrrsCreatedAt :: Lens' GetMLModelResponse (Maybe UTCTime)
gmlmrrsCreatedAt = lens _gmlmrrsCreatedAt (\s a -> s {_gmlmrrsCreatedAt = a}) . mapping _Time

-- | A list of the training parameters in the @MLModel@ . The list is implemented as a map of key-value pairs. The following is the current set of training parameters:      * @sgd.maxMLModelSizeInBytes@ - The maximum allowed size of the model. Depending on the input data, the size of the model might affect its performance. The value is an integer that ranges from @100000@ to @2147483648@ . The default value is @33554432@ .     * @sgd.maxPasses@ - The number of times that the training process traverses the observations to build the @MLModel@ . The value is an integer that ranges from @1@ to @10000@ . The default value is @10@ .     * @sgd.shuffleType@ - Whether Amazon ML shuffles the training data. Shuffling data improves a model's ability to find the optimal solution for a variety of data types. The valid values are @auto@ and @none@ . The default value is @none@ . We strongly recommend that you shuffle your data.     * @sgd.l1RegularizationAmount@ - The coefficient regularization L1 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to zero, resulting in a sparse feature set. If you use this parameter, start by specifying a small value, such as @1.0E-08@ . The value is a double that ranges from @0@ to @MAX_DOUBLE@ . The default is to not use L1 normalization. This parameter can't be used when @L2@ is specified. Use this parameter sparingly.     * @sgd.l2RegularizationAmount@ - The coefficient regularization L2 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to small, nonzero values. If you use this parameter, start by specifying a small value, such as @1.0E-08@ . The value is a double that ranges from @0@ to @MAX_DOUBLE@ . The default is to not use L2 normalization. This parameter can't be used when @L1@ is specified. Use this parameter sparingly.
gmlmrrsTrainingParameters :: Lens' GetMLModelResponse (HashMap Text Text)
gmlmrrsTrainingParameters = lens _gmlmrrsTrainingParameters (\s a -> s {_gmlmrrsTrainingParameters = a}) . _Default . _Map

-- | The epoch time when Amazon Machine Learning marked the @MLModel@ as @COMPLETED@ or @FAILED@ . @FinishedAt@ is only available when the @MLModel@ is in the @COMPLETED@ or @FAILED@ state.
gmlmrrsFinishedAt :: Lens' GetMLModelResponse (Maybe UTCTime)
gmlmrrsFinishedAt = lens _gmlmrrsFinishedAt (\s a -> s {_gmlmrrsFinishedAt = a}) . mapping _Time

-- | The scoring threshold is used in binary classification @MLModel@ models. It marks the boundary between a positive prediction and a negative prediction. Output values greater than or equal to the threshold receive a positive result from the MLModel, such as @true@ . Output values less than the threshold receive a negative response from the MLModel, such as @false@ .
gmlmrrsScoreThreshold :: Lens' GetMLModelResponse (Maybe Double)
gmlmrrsScoreThreshold = lens _gmlmrrsScoreThreshold (\s a -> s {_gmlmrrsScoreThreshold = a})

-- | The AWS user account from which the @MLModel@ was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.
gmlmrrsCreatedByIAMUser :: Lens' GetMLModelResponse (Maybe Text)
gmlmrrsCreatedByIAMUser = lens _gmlmrrsCreatedByIAMUser (\s a -> s {_gmlmrrsCreatedByIAMUser = a})

-- | A user-supplied name or description of the @MLModel@ .
gmlmrrsName :: Lens' GetMLModelResponse (Maybe Text)
gmlmrrsName = lens _gmlmrrsName (\s a -> s {_gmlmrrsName = a})

-- | Identifies the @MLModel@ category. The following are the available types:      * REGRESSION -- Produces a numeric result. For example, "What price should a house be listed at?"    * BINARY -- Produces one of two possible results. For example, "Is this an e-commerce website?"    * MULTICLASS -- Produces one of several possible results. For example, "Is this a HIGH, LOW or MEDIUM risk trade?"
gmlmrrsMLModelType :: Lens' GetMLModelResponse (Maybe MLModelType)
gmlmrrsMLModelType = lens _gmlmrrsMLModelType (\s a -> s {_gmlmrrsMLModelType = a})

-- | The MLModel ID, which is same as the @MLModelId@ in the request.
gmlmrrsMLModelId :: Lens' GetMLModelResponse (Maybe Text)
gmlmrrsMLModelId = lens _gmlmrrsMLModelId (\s a -> s {_gmlmrrsMLModelId = a})

-- | Undocumented member.
gmlmrrsSizeInBytes :: Lens' GetMLModelResponse (Maybe Integer)
gmlmrrsSizeInBytes = lens _gmlmrrsSizeInBytes (\s a -> s {_gmlmrrsSizeInBytes = a})

-- | The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).
gmlmrrsInputDataLocationS3 :: Lens' GetMLModelResponse (Maybe Text)
gmlmrrsInputDataLocationS3 = lens _gmlmrrsInputDataLocationS3 (\s a -> s {_gmlmrrsInputDataLocationS3 = a})

-- | The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the @MLModel@ , normalized and scaled on computation resources. @ComputeTime@ is only available if the @MLModel@ is in the @COMPLETED@ state.
gmlmrrsComputeTime :: Lens' GetMLModelResponse (Maybe Integer)
gmlmrrsComputeTime = lens _gmlmrrsComputeTime (\s a -> s {_gmlmrrsComputeTime = a})

-- | The ID of the training @DataSource@ .
gmlmrrsTrainingDataSourceId :: Lens' GetMLModelResponse (Maybe Text)
gmlmrrsTrainingDataSourceId = lens _gmlmrrsTrainingDataSourceId (\s a -> s {_gmlmrrsTrainingDataSourceId = a})

-- | The time of the most recent edit to the @MLModel@ . The time is expressed in epoch time.
gmlmrrsLastUpdatedAt :: Lens' GetMLModelResponse (Maybe UTCTime)
gmlmrrsLastUpdatedAt = lens _gmlmrrsLastUpdatedAt (\s a -> s {_gmlmrrsLastUpdatedAt = a}) . mapping _Time

-- | A link to the file that contains logs of the @CreateMLModel@ operation.
gmlmrrsLogURI :: Lens' GetMLModelResponse (Maybe Text)
gmlmrrsLogURI = lens _gmlmrrsLogURI (\s a -> s {_gmlmrrsLogURI = a})

-- | -- | The response status code.
gmlmrrsResponseStatus :: Lens' GetMLModelResponse Int
gmlmrrsResponseStatus = lens _gmlmrrsResponseStatus (\s a -> s {_gmlmrrsResponseStatus = a})

instance NFData GetMLModelResponse
