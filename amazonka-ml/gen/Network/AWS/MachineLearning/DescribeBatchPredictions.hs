{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
-- Returns a list of @BatchPrediction@ operations that match the search
-- criteria in the request.
--
-- This operation returns paginated results.
module Network.AWS.MachineLearning.DescribeBatchPredictions
  ( -- * Creating a Request
    DescribeBatchPredictions (..),
    newDescribeBatchPredictions,

    -- * Request Lenses
    describeBatchPredictions_sortOrder,
    describeBatchPredictions_eQ,
    describeBatchPredictions_nextToken,
    describeBatchPredictions_filterVariable,
    describeBatchPredictions_gT,
    describeBatchPredictions_nE,
    describeBatchPredictions_prefix,
    describeBatchPredictions_gE,
    describeBatchPredictions_lE,
    describeBatchPredictions_lT,
    describeBatchPredictions_limit,

    -- * Destructuring the Response
    DescribeBatchPredictionsResponse (..),
    newDescribeBatchPredictionsResponse,

    -- * Response Lenses
    describeBatchPredictionsResponse_nextToken,
    describeBatchPredictionsResponse_results,
    describeBatchPredictionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MachineLearning.Types
import Network.AWS.MachineLearning.Types.BatchPrediction
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeBatchPredictions' smart constructor.
data DescribeBatchPredictions = DescribeBatchPredictions'
  { -- | A two-value parameter that determines the sequence of the resulting list
    -- of @MLModel@s.
    --
    -- -   @asc@ - Arranges the list in ascending order (A-Z, 0-9).
    -- -   @dsc@ - Arranges the list in descending order (Z-A, 9-0).
    --
    -- Results are sorted by @FilterVariable@.
    sortOrder :: Prelude.Maybe SortOrder,
    -- | The equal to operator. The @BatchPrediction@ results will have
    -- @FilterVariable@ values that exactly match the value specified with
    -- @EQ@.
    eQ :: Prelude.Maybe Prelude.Text,
    -- | An ID of the page in the paginated results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Use one of the following variables to filter a list of
    -- @BatchPrediction@:
    --
    -- -   @CreatedAt@ - Sets the search criteria to the @BatchPrediction@
    --     creation date.
    -- -   @Status@ - Sets the search criteria to the @BatchPrediction@ status.
    -- -   @Name@ - Sets the search criteria to the contents of the
    --     @BatchPrediction@ ____ @Name@.
    -- -   @IAMUser@ - Sets the search criteria to the user account that
    --     invoked the @BatchPrediction@ creation.
    -- -   @MLModelId@ - Sets the search criteria to the @MLModel@ used in the
    --     @BatchPrediction@.
    -- -   @DataSourceId@ - Sets the search criteria to the @DataSource@ used
    --     in the @BatchPrediction@.
    -- -   @DataURI@ - Sets the search criteria to the data file(s) used in the
    --     @BatchPrediction@. The URL can identify either a file or an Amazon
    --     Simple Storage Solution (Amazon S3) bucket or directory.
    filterVariable :: Prelude.Maybe BatchPredictionFilterVariable,
    -- | The greater than operator. The @BatchPrediction@ results will have
    -- @FilterVariable@ values that are greater than the value specified with
    -- @GT@.
    gT :: Prelude.Maybe Prelude.Text,
    -- | The not equal to operator. The @BatchPrediction@ results will have
    -- @FilterVariable@ values not equal to the value specified with @NE@.
    nE :: Prelude.Maybe Prelude.Text,
    -- | A string that is found at the beginning of a variable, such as @Name@ or
    -- @Id@.
    --
    -- For example, a @Batch Prediction@ operation could have the @Name@
    -- @2014-09-09-HolidayGiftMailer@. To search for this @BatchPrediction@,
    -- select @Name@ for the @FilterVariable@ and any of the following strings
    -- for the @Prefix@:
    --
    -- -   2014-09
    --
    -- -   2014-09-09
    --
    -- -   2014-09-09-Holiday
    prefix :: Prelude.Maybe Prelude.Text,
    -- | The greater than or equal to operator. The @BatchPrediction@ results
    -- will have @FilterVariable@ values that are greater than or equal to the
    -- value specified with @GE@.
    gE :: Prelude.Maybe Prelude.Text,
    -- | The less than or equal to operator. The @BatchPrediction@ results will
    -- have @FilterVariable@ values that are less than or equal to the value
    -- specified with @LE@.
    lE :: Prelude.Maybe Prelude.Text,
    -- | The less than operator. The @BatchPrediction@ results will have
    -- @FilterVariable@ values that are less than the value specified with
    -- @LT@.
    lT :: Prelude.Maybe Prelude.Text,
    -- | The number of pages of information to include in the result. The range
    -- of acceptable values is @1@ through @100@. The default value is @100@.
    limit :: Prelude.Maybe Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeBatchPredictions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortOrder', 'describeBatchPredictions_sortOrder' - A two-value parameter that determines the sequence of the resulting list
-- of @MLModel@s.
--
-- -   @asc@ - Arranges the list in ascending order (A-Z, 0-9).
-- -   @dsc@ - Arranges the list in descending order (Z-A, 9-0).
--
-- Results are sorted by @FilterVariable@.
--
-- 'eQ', 'describeBatchPredictions_eQ' - The equal to operator. The @BatchPrediction@ results will have
-- @FilterVariable@ values that exactly match the value specified with
-- @EQ@.
--
-- 'nextToken', 'describeBatchPredictions_nextToken' - An ID of the page in the paginated results.
--
-- 'filterVariable', 'describeBatchPredictions_filterVariable' - Use one of the following variables to filter a list of
-- @BatchPrediction@:
--
-- -   @CreatedAt@ - Sets the search criteria to the @BatchPrediction@
--     creation date.
-- -   @Status@ - Sets the search criteria to the @BatchPrediction@ status.
-- -   @Name@ - Sets the search criteria to the contents of the
--     @BatchPrediction@ ____ @Name@.
-- -   @IAMUser@ - Sets the search criteria to the user account that
--     invoked the @BatchPrediction@ creation.
-- -   @MLModelId@ - Sets the search criteria to the @MLModel@ used in the
--     @BatchPrediction@.
-- -   @DataSourceId@ - Sets the search criteria to the @DataSource@ used
--     in the @BatchPrediction@.
-- -   @DataURI@ - Sets the search criteria to the data file(s) used in the
--     @BatchPrediction@. The URL can identify either a file or an Amazon
--     Simple Storage Solution (Amazon S3) bucket or directory.
--
-- 'gT', 'describeBatchPredictions_gT' - The greater than operator. The @BatchPrediction@ results will have
-- @FilterVariable@ values that are greater than the value specified with
-- @GT@.
--
-- 'nE', 'describeBatchPredictions_nE' - The not equal to operator. The @BatchPrediction@ results will have
-- @FilterVariable@ values not equal to the value specified with @NE@.
--
-- 'prefix', 'describeBatchPredictions_prefix' - A string that is found at the beginning of a variable, such as @Name@ or
-- @Id@.
--
-- For example, a @Batch Prediction@ operation could have the @Name@
-- @2014-09-09-HolidayGiftMailer@. To search for this @BatchPrediction@,
-- select @Name@ for the @FilterVariable@ and any of the following strings
-- for the @Prefix@:
--
-- -   2014-09
--
-- -   2014-09-09
--
-- -   2014-09-09-Holiday
--
-- 'gE', 'describeBatchPredictions_gE' - The greater than or equal to operator. The @BatchPrediction@ results
-- will have @FilterVariable@ values that are greater than or equal to the
-- value specified with @GE@.
--
-- 'lE', 'describeBatchPredictions_lE' - The less than or equal to operator. The @BatchPrediction@ results will
-- have @FilterVariable@ values that are less than or equal to the value
-- specified with @LE@.
--
-- 'lT', 'describeBatchPredictions_lT' - The less than operator. The @BatchPrediction@ results will have
-- @FilterVariable@ values that are less than the value specified with
-- @LT@.
--
-- 'limit', 'describeBatchPredictions_limit' - The number of pages of information to include in the result. The range
-- of acceptable values is @1@ through @100@. The default value is @100@.
newDescribeBatchPredictions ::
  DescribeBatchPredictions
newDescribeBatchPredictions =
  DescribeBatchPredictions'
    { sortOrder =
        Prelude.Nothing,
      eQ = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      filterVariable = Prelude.Nothing,
      gT = Prelude.Nothing,
      nE = Prelude.Nothing,
      prefix = Prelude.Nothing,
      gE = Prelude.Nothing,
      lE = Prelude.Nothing,
      lT = Prelude.Nothing,
      limit = Prelude.Nothing
    }

-- | A two-value parameter that determines the sequence of the resulting list
-- of @MLModel@s.
--
-- -   @asc@ - Arranges the list in ascending order (A-Z, 0-9).
-- -   @dsc@ - Arranges the list in descending order (Z-A, 9-0).
--
-- Results are sorted by @FilterVariable@.
describeBatchPredictions_sortOrder :: Lens.Lens' DescribeBatchPredictions (Prelude.Maybe SortOrder)
describeBatchPredictions_sortOrder = Lens.lens (\DescribeBatchPredictions' {sortOrder} -> sortOrder) (\s@DescribeBatchPredictions' {} a -> s {sortOrder = a} :: DescribeBatchPredictions)

-- | The equal to operator. The @BatchPrediction@ results will have
-- @FilterVariable@ values that exactly match the value specified with
-- @EQ@.
describeBatchPredictions_eQ :: Lens.Lens' DescribeBatchPredictions (Prelude.Maybe Prelude.Text)
describeBatchPredictions_eQ = Lens.lens (\DescribeBatchPredictions' {eQ} -> eQ) (\s@DescribeBatchPredictions' {} a -> s {eQ = a} :: DescribeBatchPredictions)

-- | An ID of the page in the paginated results.
describeBatchPredictions_nextToken :: Lens.Lens' DescribeBatchPredictions (Prelude.Maybe Prelude.Text)
describeBatchPredictions_nextToken = Lens.lens (\DescribeBatchPredictions' {nextToken} -> nextToken) (\s@DescribeBatchPredictions' {} a -> s {nextToken = a} :: DescribeBatchPredictions)

-- | Use one of the following variables to filter a list of
-- @BatchPrediction@:
--
-- -   @CreatedAt@ - Sets the search criteria to the @BatchPrediction@
--     creation date.
-- -   @Status@ - Sets the search criteria to the @BatchPrediction@ status.
-- -   @Name@ - Sets the search criteria to the contents of the
--     @BatchPrediction@ ____ @Name@.
-- -   @IAMUser@ - Sets the search criteria to the user account that
--     invoked the @BatchPrediction@ creation.
-- -   @MLModelId@ - Sets the search criteria to the @MLModel@ used in the
--     @BatchPrediction@.
-- -   @DataSourceId@ - Sets the search criteria to the @DataSource@ used
--     in the @BatchPrediction@.
-- -   @DataURI@ - Sets the search criteria to the data file(s) used in the
--     @BatchPrediction@. The URL can identify either a file or an Amazon
--     Simple Storage Solution (Amazon S3) bucket or directory.
describeBatchPredictions_filterVariable :: Lens.Lens' DescribeBatchPredictions (Prelude.Maybe BatchPredictionFilterVariable)
describeBatchPredictions_filterVariable = Lens.lens (\DescribeBatchPredictions' {filterVariable} -> filterVariable) (\s@DescribeBatchPredictions' {} a -> s {filterVariable = a} :: DescribeBatchPredictions)

-- | The greater than operator. The @BatchPrediction@ results will have
-- @FilterVariable@ values that are greater than the value specified with
-- @GT@.
describeBatchPredictions_gT :: Lens.Lens' DescribeBatchPredictions (Prelude.Maybe Prelude.Text)
describeBatchPredictions_gT = Lens.lens (\DescribeBatchPredictions' {gT} -> gT) (\s@DescribeBatchPredictions' {} a -> s {gT = a} :: DescribeBatchPredictions)

-- | The not equal to operator. The @BatchPrediction@ results will have
-- @FilterVariable@ values not equal to the value specified with @NE@.
describeBatchPredictions_nE :: Lens.Lens' DescribeBatchPredictions (Prelude.Maybe Prelude.Text)
describeBatchPredictions_nE = Lens.lens (\DescribeBatchPredictions' {nE} -> nE) (\s@DescribeBatchPredictions' {} a -> s {nE = a} :: DescribeBatchPredictions)

-- | A string that is found at the beginning of a variable, such as @Name@ or
-- @Id@.
--
-- For example, a @Batch Prediction@ operation could have the @Name@
-- @2014-09-09-HolidayGiftMailer@. To search for this @BatchPrediction@,
-- select @Name@ for the @FilterVariable@ and any of the following strings
-- for the @Prefix@:
--
-- -   2014-09
--
-- -   2014-09-09
--
-- -   2014-09-09-Holiday
describeBatchPredictions_prefix :: Lens.Lens' DescribeBatchPredictions (Prelude.Maybe Prelude.Text)
describeBatchPredictions_prefix = Lens.lens (\DescribeBatchPredictions' {prefix} -> prefix) (\s@DescribeBatchPredictions' {} a -> s {prefix = a} :: DescribeBatchPredictions)

-- | The greater than or equal to operator. The @BatchPrediction@ results
-- will have @FilterVariable@ values that are greater than or equal to the
-- value specified with @GE@.
describeBatchPredictions_gE :: Lens.Lens' DescribeBatchPredictions (Prelude.Maybe Prelude.Text)
describeBatchPredictions_gE = Lens.lens (\DescribeBatchPredictions' {gE} -> gE) (\s@DescribeBatchPredictions' {} a -> s {gE = a} :: DescribeBatchPredictions)

-- | The less than or equal to operator. The @BatchPrediction@ results will
-- have @FilterVariable@ values that are less than or equal to the value
-- specified with @LE@.
describeBatchPredictions_lE :: Lens.Lens' DescribeBatchPredictions (Prelude.Maybe Prelude.Text)
describeBatchPredictions_lE = Lens.lens (\DescribeBatchPredictions' {lE} -> lE) (\s@DescribeBatchPredictions' {} a -> s {lE = a} :: DescribeBatchPredictions)

-- | The less than operator. The @BatchPrediction@ results will have
-- @FilterVariable@ values that are less than the value specified with
-- @LT@.
describeBatchPredictions_lT :: Lens.Lens' DescribeBatchPredictions (Prelude.Maybe Prelude.Text)
describeBatchPredictions_lT = Lens.lens (\DescribeBatchPredictions' {lT} -> lT) (\s@DescribeBatchPredictions' {} a -> s {lT = a} :: DescribeBatchPredictions)

-- | The number of pages of information to include in the result. The range
-- of acceptable values is @1@ through @100@. The default value is @100@.
describeBatchPredictions_limit :: Lens.Lens' DescribeBatchPredictions (Prelude.Maybe Prelude.Natural)
describeBatchPredictions_limit = Lens.lens (\DescribeBatchPredictions' {limit} -> limit) (\s@DescribeBatchPredictions' {} a -> s {limit = a} :: DescribeBatchPredictions) Prelude.. Lens.mapping Prelude._Nat

instance Pager.AWSPager DescribeBatchPredictions where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? describeBatchPredictionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? describeBatchPredictionsResponse_results
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& describeBatchPredictions_nextToken
          Lens..~ rs
          Lens.^? describeBatchPredictionsResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest DescribeBatchPredictions where
  type
    Rs DescribeBatchPredictions =
      DescribeBatchPredictionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeBatchPredictionsResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
            Prelude.<*> (x Prelude..?> "Results" Prelude..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeBatchPredictions

instance Prelude.NFData DescribeBatchPredictions

instance Prelude.ToHeaders DescribeBatchPredictions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AmazonML_20141212.DescribeBatchPredictions" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DescribeBatchPredictions where
  toJSON DescribeBatchPredictions' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("SortOrder" Prelude..=) Prelude.<$> sortOrder,
            ("EQ" Prelude..=) Prelude.<$> eQ,
            ("NextToken" Prelude..=) Prelude.<$> nextToken,
            ("FilterVariable" Prelude..=)
              Prelude.<$> filterVariable,
            ("GT" Prelude..=) Prelude.<$> gT,
            ("NE" Prelude..=) Prelude.<$> nE,
            ("Prefix" Prelude..=) Prelude.<$> prefix,
            ("GE" Prelude..=) Prelude.<$> gE,
            ("LE" Prelude..=) Prelude.<$> lE,
            ("LT" Prelude..=) Prelude.<$> lT,
            ("Limit" Prelude..=) Prelude.<$> limit
          ]
      )

instance Prelude.ToPath DescribeBatchPredictions where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeBatchPredictions where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the output of a @DescribeBatchPredictions@ operation. The
-- content is essentially a list of @BatchPrediction@s.
--
-- /See:/ 'newDescribeBatchPredictionsResponse' smart constructor.
data DescribeBatchPredictionsResponse = DescribeBatchPredictionsResponse'
  { -- | The ID of the next page in the paginated results that indicates at least
    -- one more page follows.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of @BatchPrediction@ objects that meet the search criteria.
    results :: Prelude.Maybe [BatchPrediction],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeBatchPredictionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeBatchPredictionsResponse_nextToken' - The ID of the next page in the paginated results that indicates at least
-- one more page follows.
--
-- 'results', 'describeBatchPredictionsResponse_results' - A list of @BatchPrediction@ objects that meet the search criteria.
--
-- 'httpStatus', 'describeBatchPredictionsResponse_httpStatus' - The response's http status code.
newDescribeBatchPredictionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeBatchPredictionsResponse
newDescribeBatchPredictionsResponse pHttpStatus_ =
  DescribeBatchPredictionsResponse'
    { nextToken =
        Prelude.Nothing,
      results = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID of the next page in the paginated results that indicates at least
-- one more page follows.
describeBatchPredictionsResponse_nextToken :: Lens.Lens' DescribeBatchPredictionsResponse (Prelude.Maybe Prelude.Text)
describeBatchPredictionsResponse_nextToken = Lens.lens (\DescribeBatchPredictionsResponse' {nextToken} -> nextToken) (\s@DescribeBatchPredictionsResponse' {} a -> s {nextToken = a} :: DescribeBatchPredictionsResponse)

-- | A list of @BatchPrediction@ objects that meet the search criteria.
describeBatchPredictionsResponse_results :: Lens.Lens' DescribeBatchPredictionsResponse (Prelude.Maybe [BatchPrediction])
describeBatchPredictionsResponse_results = Lens.lens (\DescribeBatchPredictionsResponse' {results} -> results) (\s@DescribeBatchPredictionsResponse' {} a -> s {results = a} :: DescribeBatchPredictionsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
describeBatchPredictionsResponse_httpStatus :: Lens.Lens' DescribeBatchPredictionsResponse Prelude.Int
describeBatchPredictionsResponse_httpStatus = Lens.lens (\DescribeBatchPredictionsResponse' {httpStatus} -> httpStatus) (\s@DescribeBatchPredictionsResponse' {} a -> s {httpStatus = a} :: DescribeBatchPredictionsResponse)

instance
  Prelude.NFData
    DescribeBatchPredictionsResponse
