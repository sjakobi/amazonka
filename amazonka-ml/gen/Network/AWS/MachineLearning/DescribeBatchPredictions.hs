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
-- Module      : Network.AWS.MachineLearning.DescribeBatchPredictions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of @BatchPrediction@ operations that match the search criteria in the request.
--
--
--
-- This operation returns paginated results.
module Network.AWS.MachineLearning.DescribeBatchPredictions
  ( -- * Creating a Request
    describeBatchPredictions,
    DescribeBatchPredictions,

    -- * Request Lenses
    dbpSortOrder,
    dbpEQ,
    dbpNextToken,
    dbpFilterVariable,
    dbpGT,
    dbpNE,
    dbpPrefix,
    dbpGE,
    dbpLE,
    dbpLT,
    dbpLimit,

    -- * Destructuring the Response
    describeBatchPredictionsResponse,
    DescribeBatchPredictionsResponse,

    -- * Response Lenses
    dbprrsNextToken,
    dbprrsResults,
    dbprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeBatchPredictions' smart constructor.
data DescribeBatchPredictions = DescribeBatchPredictions'
  { _dbpSortOrder ::
      !(Maybe SortOrder),
    _dbpEQ ::
      !(Maybe Text),
    _dbpNextToken ::
      !(Maybe Text),
    _dbpFilterVariable ::
      !( Maybe
           BatchPredictionFilterVariable
       ),
    _dbpGT ::
      !(Maybe Text),
    _dbpNE ::
      !(Maybe Text),
    _dbpPrefix ::
      !(Maybe Text),
    _dbpGE ::
      !(Maybe Text),
    _dbpLE ::
      !(Maybe Text),
    _dbpLT ::
      !(Maybe Text),
    _dbpLimit ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeBatchPredictions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbpSortOrder' - A two-value parameter that determines the sequence of the resulting list of @MLModel@ s.     * @asc@ - Arranges the list in ascending order (A-Z, 0-9).    * @dsc@ - Arranges the list in descending order (Z-A, 9-0). Results are sorted by @FilterVariable@ .
--
-- * 'dbpEQ' - The equal to operator. The @BatchPrediction@ results will have @FilterVariable@ values that exactly match the value specified with @EQ@ .
--
-- * 'dbpNextToken' - An ID of the page in the paginated results.
--
-- * 'dbpFilterVariable' - Use one of the following variables to filter a list of @BatchPrediction@ :     * @CreatedAt@ - Sets the search criteria to the @BatchPrediction@ creation date.    * @Status@ - Sets the search criteria to the @BatchPrediction@ status.    * @Name@ - Sets the search criteria to the contents of the @BatchPrediction@ ____ @Name@ .    * @IAMUser@ - Sets the search criteria to the user account that invoked the @BatchPrediction@ creation.    * @MLModelId@ - Sets the search criteria to the @MLModel@ used in the @BatchPrediction@ .    * @DataSourceId@ - Sets the search criteria to the @DataSource@ used in the @BatchPrediction@ .    * @DataURI@ - Sets the search criteria to the data file(s) used in the @BatchPrediction@ . The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.
--
-- * 'dbpGT' - The greater than operator. The @BatchPrediction@ results will have @FilterVariable@ values that are greater than the value specified with @GT@ .
--
-- * 'dbpNE' - The not equal to operator. The @BatchPrediction@ results will have @FilterVariable@ values not equal to the value specified with @NE@ .
--
-- * 'dbpPrefix' - A string that is found at the beginning of a variable, such as @Name@ or @Id@ . For example, a @Batch Prediction@ operation could have the @Name@ @2014-09-09-HolidayGiftMailer@ . To search for this @BatchPrediction@ , select @Name@ for the @FilterVariable@ and any of the following strings for the @Prefix@ :      * 2014-09     * 2014-09-09     * 2014-09-09-Holiday
--
-- * 'dbpGE' - The greater than or equal to operator. The @BatchPrediction@ results will have @FilterVariable@ values that are greater than or equal to the value specified with @GE@ .
--
-- * 'dbpLE' - The less than or equal to operator. The @BatchPrediction@ results will have @FilterVariable@ values that are less than or equal to the value specified with @LE@ .
--
-- * 'dbpLT' - The less than operator. The @BatchPrediction@ results will have @FilterVariable@ values that are less than the value specified with @LT@ .
--
-- * 'dbpLimit' - The number of pages of information to include in the result. The range of acceptable values is @1@ through @100@ . The default value is @100@ .
describeBatchPredictions ::
  DescribeBatchPredictions
describeBatchPredictions =
  DescribeBatchPredictions'
    { _dbpSortOrder = Nothing,
      _dbpEQ = Nothing,
      _dbpNextToken = Nothing,
      _dbpFilterVariable = Nothing,
      _dbpGT = Nothing,
      _dbpNE = Nothing,
      _dbpPrefix = Nothing,
      _dbpGE = Nothing,
      _dbpLE = Nothing,
      _dbpLT = Nothing,
      _dbpLimit = Nothing
    }

-- | A two-value parameter that determines the sequence of the resulting list of @MLModel@ s.     * @asc@ - Arranges the list in ascending order (A-Z, 0-9).    * @dsc@ - Arranges the list in descending order (Z-A, 9-0). Results are sorted by @FilterVariable@ .
dbpSortOrder :: Lens' DescribeBatchPredictions (Maybe SortOrder)
dbpSortOrder = lens _dbpSortOrder (\s a -> s {_dbpSortOrder = a})

-- | The equal to operator. The @BatchPrediction@ results will have @FilterVariable@ values that exactly match the value specified with @EQ@ .
dbpEQ :: Lens' DescribeBatchPredictions (Maybe Text)
dbpEQ = lens _dbpEQ (\s a -> s {_dbpEQ = a})

-- | An ID of the page in the paginated results.
dbpNextToken :: Lens' DescribeBatchPredictions (Maybe Text)
dbpNextToken = lens _dbpNextToken (\s a -> s {_dbpNextToken = a})

-- | Use one of the following variables to filter a list of @BatchPrediction@ :     * @CreatedAt@ - Sets the search criteria to the @BatchPrediction@ creation date.    * @Status@ - Sets the search criteria to the @BatchPrediction@ status.    * @Name@ - Sets the search criteria to the contents of the @BatchPrediction@ ____ @Name@ .    * @IAMUser@ - Sets the search criteria to the user account that invoked the @BatchPrediction@ creation.    * @MLModelId@ - Sets the search criteria to the @MLModel@ used in the @BatchPrediction@ .    * @DataSourceId@ - Sets the search criteria to the @DataSource@ used in the @BatchPrediction@ .    * @DataURI@ - Sets the search criteria to the data file(s) used in the @BatchPrediction@ . The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.
dbpFilterVariable :: Lens' DescribeBatchPredictions (Maybe BatchPredictionFilterVariable)
dbpFilterVariable = lens _dbpFilterVariable (\s a -> s {_dbpFilterVariable = a})

-- | The greater than operator. The @BatchPrediction@ results will have @FilterVariable@ values that are greater than the value specified with @GT@ .
dbpGT :: Lens' DescribeBatchPredictions (Maybe Text)
dbpGT = lens _dbpGT (\s a -> s {_dbpGT = a})

-- | The not equal to operator. The @BatchPrediction@ results will have @FilterVariable@ values not equal to the value specified with @NE@ .
dbpNE :: Lens' DescribeBatchPredictions (Maybe Text)
dbpNE = lens _dbpNE (\s a -> s {_dbpNE = a})

-- | A string that is found at the beginning of a variable, such as @Name@ or @Id@ . For example, a @Batch Prediction@ operation could have the @Name@ @2014-09-09-HolidayGiftMailer@ . To search for this @BatchPrediction@ , select @Name@ for the @FilterVariable@ and any of the following strings for the @Prefix@ :      * 2014-09     * 2014-09-09     * 2014-09-09-Holiday
dbpPrefix :: Lens' DescribeBatchPredictions (Maybe Text)
dbpPrefix = lens _dbpPrefix (\s a -> s {_dbpPrefix = a})

-- | The greater than or equal to operator. The @BatchPrediction@ results will have @FilterVariable@ values that are greater than or equal to the value specified with @GE@ .
dbpGE :: Lens' DescribeBatchPredictions (Maybe Text)
dbpGE = lens _dbpGE (\s a -> s {_dbpGE = a})

-- | The less than or equal to operator. The @BatchPrediction@ results will have @FilterVariable@ values that are less than or equal to the value specified with @LE@ .
dbpLE :: Lens' DescribeBatchPredictions (Maybe Text)
dbpLE = lens _dbpLE (\s a -> s {_dbpLE = a})

-- | The less than operator. The @BatchPrediction@ results will have @FilterVariable@ values that are less than the value specified with @LT@ .
dbpLT :: Lens' DescribeBatchPredictions (Maybe Text)
dbpLT = lens _dbpLT (\s a -> s {_dbpLT = a})

-- | The number of pages of information to include in the result. The range of acceptable values is @1@ through @100@ . The default value is @100@ .
dbpLimit :: Lens' DescribeBatchPredictions (Maybe Natural)
dbpLimit = lens _dbpLimit (\s a -> s {_dbpLimit = a}) . mapping _Nat

instance AWSPager DescribeBatchPredictions where
  page rq rs
    | stop (rs ^. dbprrsNextToken) = Nothing
    | stop (rs ^. dbprrsResults) = Nothing
    | otherwise =
      Just $ rq & dbpNextToken .~ rs ^. dbprrsNextToken

instance AWSRequest DescribeBatchPredictions where
  type
    Rs DescribeBatchPredictions =
      DescribeBatchPredictionsResponse
  request = postJSON machineLearning
  response =
    receiveJSON
      ( \s h x ->
          DescribeBatchPredictionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Results" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeBatchPredictions

instance NFData DescribeBatchPredictions

instance ToHeaders DescribeBatchPredictions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonML_20141212.DescribeBatchPredictions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeBatchPredictions where
  toJSON DescribeBatchPredictions' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _dbpSortOrder,
            ("EQ" .=) <$> _dbpEQ,
            ("NextToken" .=) <$> _dbpNextToken,
            ("FilterVariable" .=) <$> _dbpFilterVariable,
            ("GT" .=) <$> _dbpGT,
            ("NE" .=) <$> _dbpNE,
            ("Prefix" .=) <$> _dbpPrefix,
            ("GE" .=) <$> _dbpGE,
            ("LE" .=) <$> _dbpLE,
            ("LT" .=) <$> _dbpLT,
            ("Limit" .=) <$> _dbpLimit
          ]
      )

instance ToPath DescribeBatchPredictions where
  toPath = const "/"

instance ToQuery DescribeBatchPredictions where
  toQuery = const mempty

-- | Represents the output of a @DescribeBatchPredictions@ operation. The content is essentially a list of @BatchPrediction@ s.
--
--
--
-- /See:/ 'describeBatchPredictionsResponse' smart constructor.
data DescribeBatchPredictionsResponse = DescribeBatchPredictionsResponse'
  { _dbprrsNextToken ::
      !( Maybe
           Text
       ),
    _dbprrsResults ::
      !( Maybe
           [BatchPrediction]
       ),
    _dbprrsResponseStatus ::
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

-- | Creates a value of 'DescribeBatchPredictionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbprrsNextToken' - The ID of the next page in the paginated results that indicates at least one more page follows.
--
-- * 'dbprrsResults' - A list of @BatchPrediction@ objects that meet the search criteria.
--
-- * 'dbprrsResponseStatus' - -- | The response status code.
describeBatchPredictionsResponse ::
  -- | 'dbprrsResponseStatus'
  Int ->
  DescribeBatchPredictionsResponse
describeBatchPredictionsResponse pResponseStatus_ =
  DescribeBatchPredictionsResponse'
    { _dbprrsNextToken =
        Nothing,
      _dbprrsResults = Nothing,
      _dbprrsResponseStatus = pResponseStatus_
    }

-- | The ID of the next page in the paginated results that indicates at least one more page follows.
dbprrsNextToken :: Lens' DescribeBatchPredictionsResponse (Maybe Text)
dbprrsNextToken = lens _dbprrsNextToken (\s a -> s {_dbprrsNextToken = a})

-- | A list of @BatchPrediction@ objects that meet the search criteria.
dbprrsResults :: Lens' DescribeBatchPredictionsResponse [BatchPrediction]
dbprrsResults = lens _dbprrsResults (\s a -> s {_dbprrsResults = a}) . _Default . _Coerce

-- | -- | The response status code.
dbprrsResponseStatus :: Lens' DescribeBatchPredictionsResponse Int
dbprrsResponseStatus = lens _dbprrsResponseStatus (\s a -> s {_dbprrsResponseStatus = a})

instance NFData DescribeBatchPredictionsResponse
