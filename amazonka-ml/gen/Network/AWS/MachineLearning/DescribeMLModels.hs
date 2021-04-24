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
-- Module      : Network.AWS.MachineLearning.DescribeMLModels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of @MLModel@ that match the search criteria in the request.
--
--
--
-- This operation returns paginated results.
module Network.AWS.MachineLearning.DescribeMLModels
  ( -- * Creating a Request
    describeMLModels,
    DescribeMLModels,

    -- * Request Lenses
    dmlmSortOrder,
    dmlmEQ,
    dmlmNextToken,
    dmlmFilterVariable,
    dmlmGT,
    dmlmNE,
    dmlmPrefix,
    dmlmGE,
    dmlmLE,
    dmlmLT,
    dmlmLimit,

    -- * Destructuring the Response
    describeMLModelsResponse,
    DescribeMLModelsResponse,

    -- * Response Lenses
    dmlmrmrsNextToken,
    dmlmrmrsResults,
    dmlmrmrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeMLModels' smart constructor.
data DescribeMLModels = DescribeMLModels'
  { _dmlmSortOrder ::
      !(Maybe SortOrder),
    _dmlmEQ :: !(Maybe Text),
    _dmlmNextToken :: !(Maybe Text),
    _dmlmFilterVariable ::
      !(Maybe MLModelFilterVariable),
    _dmlmGT :: !(Maybe Text),
    _dmlmNE :: !(Maybe Text),
    _dmlmPrefix :: !(Maybe Text),
    _dmlmGE :: !(Maybe Text),
    _dmlmLE :: !(Maybe Text),
    _dmlmLT :: !(Maybe Text),
    _dmlmLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeMLModels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmlmSortOrder' - A two-value parameter that determines the sequence of the resulting list of @MLModel@ .     * @asc@ - Arranges the list in ascending order (A-Z, 0-9).    * @dsc@ - Arranges the list in descending order (Z-A, 9-0). Results are sorted by @FilterVariable@ .
--
-- * 'dmlmEQ' - The equal to operator. The @MLModel@ results will have @FilterVariable@ values that exactly match the value specified with @EQ@ .
--
-- * 'dmlmNextToken' - The ID of the page in the paginated results.
--
-- * 'dmlmFilterVariable' - Use one of the following variables to filter a list of @MLModel@ :     * @CreatedAt@ - Sets the search criteria to @MLModel@ creation date.    * @Status@ - Sets the search criteria to @MLModel@ status.    * @Name@ - Sets the search criteria to the contents of @MLModel@ ____ @Name@ .    * @IAMUser@ - Sets the search criteria to the user account that invoked the @MLModel@ creation.    * @TrainingDataSourceId@ - Sets the search criteria to the @DataSource@ used to train one or more @MLModel@ .    * @RealtimeEndpointStatus@ - Sets the search criteria to the @MLModel@ real-time endpoint status.    * @MLModelType@ - Sets the search criteria to @MLModel@ type: binary, regression, or multi-class.    * @Algorithm@ - Sets the search criteria to the algorithm that the @MLModel@ uses.    * @TrainingDataURI@ - Sets the search criteria to the data file(s) used in training a @MLModel@ . The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.
--
-- * 'dmlmGT' - The greater than operator. The @MLModel@ results will have @FilterVariable@ values that are greater than the value specified with @GT@ .
--
-- * 'dmlmNE' - The not equal to operator. The @MLModel@ results will have @FilterVariable@ values not equal to the value specified with @NE@ .
--
-- * 'dmlmPrefix' - A string that is found at the beginning of a variable, such as @Name@ or @Id@ . For example, an @MLModel@ could have the @Name@ @2014-09-09-HolidayGiftMailer@ . To search for this @MLModel@ , select @Name@ for the @FilterVariable@ and any of the following strings for the @Prefix@ :      * 2014-09     * 2014-09-09     * 2014-09-09-Holiday
--
-- * 'dmlmGE' - The greater than or equal to operator. The @MLModel@ results will have @FilterVariable@ values that are greater than or equal to the value specified with @GE@ .
--
-- * 'dmlmLE' - The less than or equal to operator. The @MLModel@ results will have @FilterVariable@ values that are less than or equal to the value specified with @LE@ .
--
-- * 'dmlmLT' - The less than operator. The @MLModel@ results will have @FilterVariable@ values that are less than the value specified with @LT@ .
--
-- * 'dmlmLimit' - The number of pages of information to include in the result. The range of acceptable values is @1@ through @100@ . The default value is @100@ .
describeMLModels ::
  DescribeMLModels
describeMLModels =
  DescribeMLModels'
    { _dmlmSortOrder = Nothing,
      _dmlmEQ = Nothing,
      _dmlmNextToken = Nothing,
      _dmlmFilterVariable = Nothing,
      _dmlmGT = Nothing,
      _dmlmNE = Nothing,
      _dmlmPrefix = Nothing,
      _dmlmGE = Nothing,
      _dmlmLE = Nothing,
      _dmlmLT = Nothing,
      _dmlmLimit = Nothing
    }

-- | A two-value parameter that determines the sequence of the resulting list of @MLModel@ .     * @asc@ - Arranges the list in ascending order (A-Z, 0-9).    * @dsc@ - Arranges the list in descending order (Z-A, 9-0). Results are sorted by @FilterVariable@ .
dmlmSortOrder :: Lens' DescribeMLModels (Maybe SortOrder)
dmlmSortOrder = lens _dmlmSortOrder (\s a -> s {_dmlmSortOrder = a})

-- | The equal to operator. The @MLModel@ results will have @FilterVariable@ values that exactly match the value specified with @EQ@ .
dmlmEQ :: Lens' DescribeMLModels (Maybe Text)
dmlmEQ = lens _dmlmEQ (\s a -> s {_dmlmEQ = a})

-- | The ID of the page in the paginated results.
dmlmNextToken :: Lens' DescribeMLModels (Maybe Text)
dmlmNextToken = lens _dmlmNextToken (\s a -> s {_dmlmNextToken = a})

-- | Use one of the following variables to filter a list of @MLModel@ :     * @CreatedAt@ - Sets the search criteria to @MLModel@ creation date.    * @Status@ - Sets the search criteria to @MLModel@ status.    * @Name@ - Sets the search criteria to the contents of @MLModel@ ____ @Name@ .    * @IAMUser@ - Sets the search criteria to the user account that invoked the @MLModel@ creation.    * @TrainingDataSourceId@ - Sets the search criteria to the @DataSource@ used to train one or more @MLModel@ .    * @RealtimeEndpointStatus@ - Sets the search criteria to the @MLModel@ real-time endpoint status.    * @MLModelType@ - Sets the search criteria to @MLModel@ type: binary, regression, or multi-class.    * @Algorithm@ - Sets the search criteria to the algorithm that the @MLModel@ uses.    * @TrainingDataURI@ - Sets the search criteria to the data file(s) used in training a @MLModel@ . The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.
dmlmFilterVariable :: Lens' DescribeMLModels (Maybe MLModelFilterVariable)
dmlmFilterVariable = lens _dmlmFilterVariable (\s a -> s {_dmlmFilterVariable = a})

-- | The greater than operator. The @MLModel@ results will have @FilterVariable@ values that are greater than the value specified with @GT@ .
dmlmGT :: Lens' DescribeMLModels (Maybe Text)
dmlmGT = lens _dmlmGT (\s a -> s {_dmlmGT = a})

-- | The not equal to operator. The @MLModel@ results will have @FilterVariable@ values not equal to the value specified with @NE@ .
dmlmNE :: Lens' DescribeMLModels (Maybe Text)
dmlmNE = lens _dmlmNE (\s a -> s {_dmlmNE = a})

-- | A string that is found at the beginning of a variable, such as @Name@ or @Id@ . For example, an @MLModel@ could have the @Name@ @2014-09-09-HolidayGiftMailer@ . To search for this @MLModel@ , select @Name@ for the @FilterVariable@ and any of the following strings for the @Prefix@ :      * 2014-09     * 2014-09-09     * 2014-09-09-Holiday
dmlmPrefix :: Lens' DescribeMLModels (Maybe Text)
dmlmPrefix = lens _dmlmPrefix (\s a -> s {_dmlmPrefix = a})

-- | The greater than or equal to operator. The @MLModel@ results will have @FilterVariable@ values that are greater than or equal to the value specified with @GE@ .
dmlmGE :: Lens' DescribeMLModels (Maybe Text)
dmlmGE = lens _dmlmGE (\s a -> s {_dmlmGE = a})

-- | The less than or equal to operator. The @MLModel@ results will have @FilterVariable@ values that are less than or equal to the value specified with @LE@ .
dmlmLE :: Lens' DescribeMLModels (Maybe Text)
dmlmLE = lens _dmlmLE (\s a -> s {_dmlmLE = a})

-- | The less than operator. The @MLModel@ results will have @FilterVariable@ values that are less than the value specified with @LT@ .
dmlmLT :: Lens' DescribeMLModels (Maybe Text)
dmlmLT = lens _dmlmLT (\s a -> s {_dmlmLT = a})

-- | The number of pages of information to include in the result. The range of acceptable values is @1@ through @100@ . The default value is @100@ .
dmlmLimit :: Lens' DescribeMLModels (Maybe Natural)
dmlmLimit = lens _dmlmLimit (\s a -> s {_dmlmLimit = a}) . mapping _Nat

instance AWSPager DescribeMLModels where
  page rq rs
    | stop (rs ^. dmlmrmrsNextToken) = Nothing
    | stop (rs ^. dmlmrmrsResults) = Nothing
    | otherwise =
      Just $ rq & dmlmNextToken .~ rs ^. dmlmrmrsNextToken

instance AWSRequest DescribeMLModels where
  type Rs DescribeMLModels = DescribeMLModelsResponse
  request = postJSON machineLearning
  response =
    receiveJSON
      ( \s h x ->
          DescribeMLModelsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Results" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeMLModels

instance NFData DescribeMLModels

instance ToHeaders DescribeMLModels where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonML_20141212.DescribeMLModels" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeMLModels where
  toJSON DescribeMLModels' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _dmlmSortOrder,
            ("EQ" .=) <$> _dmlmEQ,
            ("NextToken" .=) <$> _dmlmNextToken,
            ("FilterVariable" .=) <$> _dmlmFilterVariable,
            ("GT" .=) <$> _dmlmGT,
            ("NE" .=) <$> _dmlmNE,
            ("Prefix" .=) <$> _dmlmPrefix,
            ("GE" .=) <$> _dmlmGE,
            ("LE" .=) <$> _dmlmLE,
            ("LT" .=) <$> _dmlmLT,
            ("Limit" .=) <$> _dmlmLimit
          ]
      )

instance ToPath DescribeMLModels where
  toPath = const "/"

instance ToQuery DescribeMLModels where
  toQuery = const mempty

-- | Represents the output of a @DescribeMLModels@ operation. The content is essentially a list of @MLModel@ .
--
--
--
-- /See:/ 'describeMLModelsResponse' smart constructor.
data DescribeMLModelsResponse = DescribeMLModelsResponse'
  { _dmlmrmrsNextToken ::
      !(Maybe Text),
    _dmlmrmrsResults ::
      !(Maybe [MLModel]),
    _dmlmrmrsResponseStatus ::
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

-- | Creates a value of 'DescribeMLModelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmlmrmrsNextToken' - The ID of the next page in the paginated results that indicates at least one more page follows.
--
-- * 'dmlmrmrsResults' - A list of @MLModel@ that meet the search criteria.
--
-- * 'dmlmrmrsResponseStatus' - -- | The response status code.
describeMLModelsResponse ::
  -- | 'dmlmrmrsResponseStatus'
  Int ->
  DescribeMLModelsResponse
describeMLModelsResponse pResponseStatus_ =
  DescribeMLModelsResponse'
    { _dmlmrmrsNextToken =
        Nothing,
      _dmlmrmrsResults = Nothing,
      _dmlmrmrsResponseStatus = pResponseStatus_
    }

-- | The ID of the next page in the paginated results that indicates at least one more page follows.
dmlmrmrsNextToken :: Lens' DescribeMLModelsResponse (Maybe Text)
dmlmrmrsNextToken = lens _dmlmrmrsNextToken (\s a -> s {_dmlmrmrsNextToken = a})

-- | A list of @MLModel@ that meet the search criteria.
dmlmrmrsResults :: Lens' DescribeMLModelsResponse [MLModel]
dmlmrmrsResults = lens _dmlmrmrsResults (\s a -> s {_dmlmrmrsResults = a}) . _Default . _Coerce

-- | -- | The response status code.
dmlmrmrsResponseStatus :: Lens' DescribeMLModelsResponse Int
dmlmrmrsResponseStatus = lens _dmlmrmrsResponseStatus (\s a -> s {_dmlmrmrsResponseStatus = a})

instance NFData DescribeMLModelsResponse
