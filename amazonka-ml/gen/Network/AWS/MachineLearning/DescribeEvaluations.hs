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
-- Module      : Network.AWS.MachineLearning.DescribeEvaluations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of @DescribeEvaluations@ that match the search criteria in the request.
--
--
--
-- This operation returns paginated results.
module Network.AWS.MachineLearning.DescribeEvaluations
  ( -- * Creating a Request
    describeEvaluations,
    DescribeEvaluations,

    -- * Request Lenses
    deSortOrder,
    deEQ,
    deNextToken,
    deFilterVariable,
    deGT,
    deNE,
    dePrefix,
    deGE,
    deLE,
    deLT,
    deLimit,

    -- * Destructuring the Response
    describeEvaluationsResponse,
    DescribeEvaluationsResponse,

    -- * Response Lenses
    derrsNextToken,
    derrsResults,
    derrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeEvaluations' smart constructor.
data DescribeEvaluations = DescribeEvaluations'
  { _deSortOrder ::
      !(Maybe SortOrder),
    _deEQ :: !(Maybe Text),
    _deNextToken :: !(Maybe Text),
    _deFilterVariable ::
      !( Maybe
           EvaluationFilterVariable
       ),
    _deGT :: !(Maybe Text),
    _deNE :: !(Maybe Text),
    _dePrefix :: !(Maybe Text),
    _deGE :: !(Maybe Text),
    _deLE :: !(Maybe Text),
    _deLT :: !(Maybe Text),
    _deLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeEvaluations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deSortOrder' - A two-value parameter that determines the sequence of the resulting list of @Evaluation@ .     * @asc@ - Arranges the list in ascending order (A-Z, 0-9).    * @dsc@ - Arranges the list in descending order (Z-A, 9-0). Results are sorted by @FilterVariable@ .
--
-- * 'deEQ' - The equal to operator. The @Evaluation@ results will have @FilterVariable@ values that exactly match the value specified with @EQ@ .
--
-- * 'deNextToken' - The ID of the page in the paginated results.
--
-- * 'deFilterVariable' - Use one of the following variable to filter a list of @Evaluation@ objects:     * @CreatedAt@ - Sets the search criteria to the @Evaluation@ creation date.    * @Status@ - Sets the search criteria to the @Evaluation@ status.    * @Name@ - Sets the search criteria to the contents of @Evaluation@ ____ @Name@ .    * @IAMUser@ - Sets the search criteria to the user account that invoked an @Evaluation@ .    * @MLModelId@ - Sets the search criteria to the @MLModel@ that was evaluated.    * @DataSourceId@ - Sets the search criteria to the @DataSource@ used in @Evaluation@ .    * @DataUri@ - Sets the search criteria to the data file(s) used in @Evaluation@ . The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.
--
-- * 'deGT' - The greater than operator. The @Evaluation@ results will have @FilterVariable@ values that are greater than the value specified with @GT@ .
--
-- * 'deNE' - The not equal to operator. The @Evaluation@ results will have @FilterVariable@ values not equal to the value specified with @NE@ .
--
-- * 'dePrefix' - A string that is found at the beginning of a variable, such as @Name@ or @Id@ . For example, an @Evaluation@ could have the @Name@ @2014-09-09-HolidayGiftMailer@ . To search for this @Evaluation@ , select @Name@ for the @FilterVariable@ and any of the following strings for the @Prefix@ :      * 2014-09     * 2014-09-09     * 2014-09-09-Holiday
--
-- * 'deGE' - The greater than or equal to operator. The @Evaluation@ results will have @FilterVariable@ values that are greater than or equal to the value specified with @GE@ .
--
-- * 'deLE' - The less than or equal to operator. The @Evaluation@ results will have @FilterVariable@ values that are less than or equal to the value specified with @LE@ .
--
-- * 'deLT' - The less than operator. The @Evaluation@ results will have @FilterVariable@ values that are less than the value specified with @LT@ .
--
-- * 'deLimit' - The maximum number of @Evaluation@ to include in the result.
describeEvaluations ::
  DescribeEvaluations
describeEvaluations =
  DescribeEvaluations'
    { _deSortOrder = Nothing,
      _deEQ = Nothing,
      _deNextToken = Nothing,
      _deFilterVariable = Nothing,
      _deGT = Nothing,
      _deNE = Nothing,
      _dePrefix = Nothing,
      _deGE = Nothing,
      _deLE = Nothing,
      _deLT = Nothing,
      _deLimit = Nothing
    }

-- | A two-value parameter that determines the sequence of the resulting list of @Evaluation@ .     * @asc@ - Arranges the list in ascending order (A-Z, 0-9).    * @dsc@ - Arranges the list in descending order (Z-A, 9-0). Results are sorted by @FilterVariable@ .
deSortOrder :: Lens' DescribeEvaluations (Maybe SortOrder)
deSortOrder = lens _deSortOrder (\s a -> s {_deSortOrder = a})

-- | The equal to operator. The @Evaluation@ results will have @FilterVariable@ values that exactly match the value specified with @EQ@ .
deEQ :: Lens' DescribeEvaluations (Maybe Text)
deEQ = lens _deEQ (\s a -> s {_deEQ = a})

-- | The ID of the page in the paginated results.
deNextToken :: Lens' DescribeEvaluations (Maybe Text)
deNextToken = lens _deNextToken (\s a -> s {_deNextToken = a})

-- | Use one of the following variable to filter a list of @Evaluation@ objects:     * @CreatedAt@ - Sets the search criteria to the @Evaluation@ creation date.    * @Status@ - Sets the search criteria to the @Evaluation@ status.    * @Name@ - Sets the search criteria to the contents of @Evaluation@ ____ @Name@ .    * @IAMUser@ - Sets the search criteria to the user account that invoked an @Evaluation@ .    * @MLModelId@ - Sets the search criteria to the @MLModel@ that was evaluated.    * @DataSourceId@ - Sets the search criteria to the @DataSource@ used in @Evaluation@ .    * @DataUri@ - Sets the search criteria to the data file(s) used in @Evaluation@ . The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.
deFilterVariable :: Lens' DescribeEvaluations (Maybe EvaluationFilterVariable)
deFilterVariable = lens _deFilterVariable (\s a -> s {_deFilterVariable = a})

-- | The greater than operator. The @Evaluation@ results will have @FilterVariable@ values that are greater than the value specified with @GT@ .
deGT :: Lens' DescribeEvaluations (Maybe Text)
deGT = lens _deGT (\s a -> s {_deGT = a})

-- | The not equal to operator. The @Evaluation@ results will have @FilterVariable@ values not equal to the value specified with @NE@ .
deNE :: Lens' DescribeEvaluations (Maybe Text)
deNE = lens _deNE (\s a -> s {_deNE = a})

-- | A string that is found at the beginning of a variable, such as @Name@ or @Id@ . For example, an @Evaluation@ could have the @Name@ @2014-09-09-HolidayGiftMailer@ . To search for this @Evaluation@ , select @Name@ for the @FilterVariable@ and any of the following strings for the @Prefix@ :      * 2014-09     * 2014-09-09     * 2014-09-09-Holiday
dePrefix :: Lens' DescribeEvaluations (Maybe Text)
dePrefix = lens _dePrefix (\s a -> s {_dePrefix = a})

-- | The greater than or equal to operator. The @Evaluation@ results will have @FilterVariable@ values that are greater than or equal to the value specified with @GE@ .
deGE :: Lens' DescribeEvaluations (Maybe Text)
deGE = lens _deGE (\s a -> s {_deGE = a})

-- | The less than or equal to operator. The @Evaluation@ results will have @FilterVariable@ values that are less than or equal to the value specified with @LE@ .
deLE :: Lens' DescribeEvaluations (Maybe Text)
deLE = lens _deLE (\s a -> s {_deLE = a})

-- | The less than operator. The @Evaluation@ results will have @FilterVariable@ values that are less than the value specified with @LT@ .
deLT :: Lens' DescribeEvaluations (Maybe Text)
deLT = lens _deLT (\s a -> s {_deLT = a})

-- | The maximum number of @Evaluation@ to include in the result.
deLimit :: Lens' DescribeEvaluations (Maybe Natural)
deLimit = lens _deLimit (\s a -> s {_deLimit = a}) . mapping _Nat

instance AWSPager DescribeEvaluations where
  page rq rs
    | stop (rs ^. derrsNextToken) = Nothing
    | stop (rs ^. derrsResults) = Nothing
    | otherwise =
      Just $ rq & deNextToken .~ rs ^. derrsNextToken

instance AWSRequest DescribeEvaluations where
  type
    Rs DescribeEvaluations =
      DescribeEvaluationsResponse
  request = postJSON machineLearning
  response =
    receiveJSON
      ( \s h x ->
          DescribeEvaluationsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Results" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEvaluations

instance NFData DescribeEvaluations

instance ToHeaders DescribeEvaluations where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonML_20141212.DescribeEvaluations" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEvaluations where
  toJSON DescribeEvaluations' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _deSortOrder,
            ("EQ" .=) <$> _deEQ,
            ("NextToken" .=) <$> _deNextToken,
            ("FilterVariable" .=) <$> _deFilterVariable,
            ("GT" .=) <$> _deGT,
            ("NE" .=) <$> _deNE,
            ("Prefix" .=) <$> _dePrefix,
            ("GE" .=) <$> _deGE,
            ("LE" .=) <$> _deLE,
            ("LT" .=) <$> _deLT,
            ("Limit" .=) <$> _deLimit
          ]
      )

instance ToPath DescribeEvaluations where
  toPath = const "/"

instance ToQuery DescribeEvaluations where
  toQuery = const mempty

-- | Represents the query results from a @DescribeEvaluations@ operation. The content is essentially a list of @Evaluation@ .
--
--
--
-- /See:/ 'describeEvaluationsResponse' smart constructor.
data DescribeEvaluationsResponse = DescribeEvaluationsResponse'
  { _derrsNextToken ::
      !(Maybe Text),
    _derrsResults ::
      !( Maybe
           [Evaluation]
       ),
    _derrsResponseStatus ::
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

-- | Creates a value of 'DescribeEvaluationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derrsNextToken' - The ID of the next page in the paginated results that indicates at least one more page follows.
--
-- * 'derrsResults' - A list of @Evaluation@ that meet the search criteria.
--
-- * 'derrsResponseStatus' - -- | The response status code.
describeEvaluationsResponse ::
  -- | 'derrsResponseStatus'
  Int ->
  DescribeEvaluationsResponse
describeEvaluationsResponse pResponseStatus_ =
  DescribeEvaluationsResponse'
    { _derrsNextToken =
        Nothing,
      _derrsResults = Nothing,
      _derrsResponseStatus = pResponseStatus_
    }

-- | The ID of the next page in the paginated results that indicates at least one more page follows.
derrsNextToken :: Lens' DescribeEvaluationsResponse (Maybe Text)
derrsNextToken = lens _derrsNextToken (\s a -> s {_derrsNextToken = a})

-- | A list of @Evaluation@ that meet the search criteria.
derrsResults :: Lens' DescribeEvaluationsResponse [Evaluation]
derrsResults = lens _derrsResults (\s a -> s {_derrsResults = a}) . _Default . _Coerce

-- | -- | The response status code.
derrsResponseStatus :: Lens' DescribeEvaluationsResponse Int
derrsResponseStatus = lens _derrsResponseStatus (\s a -> s {_derrsResponseStatus = a})

instance NFData DescribeEvaluationsResponse
