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
-- Module      : Network.AWS.MachineLearning.DescribeEvaluations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of @DescribeEvaluations@ that match the search criteria
-- in the request.
--
-- This operation returns paginated results.
module Network.AWS.MachineLearning.DescribeEvaluations
  ( -- * Creating a Request
    DescribeEvaluations (..),
    newDescribeEvaluations,

    -- * Request Lenses
    describeEvaluations_sortOrder,
    describeEvaluations_eQ,
    describeEvaluations_nextToken,
    describeEvaluations_filterVariable,
    describeEvaluations_gT,
    describeEvaluations_nE,
    describeEvaluations_prefix,
    describeEvaluations_gE,
    describeEvaluations_lE,
    describeEvaluations_lT,
    describeEvaluations_limit,

    -- * Destructuring the Response
    DescribeEvaluationsResponse (..),
    newDescribeEvaluationsResponse,

    -- * Response Lenses
    describeEvaluationsResponse_nextToken,
    describeEvaluationsResponse_results,
    describeEvaluationsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MachineLearning.Types
import Network.AWS.MachineLearning.Types.Evaluation
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeEvaluations' smart constructor.
data DescribeEvaluations = DescribeEvaluations'
  { -- | A two-value parameter that determines the sequence of the resulting list
    -- of @Evaluation@.
    --
    -- -   @asc@ - Arranges the list in ascending order (A-Z, 0-9).
    -- -   @dsc@ - Arranges the list in descending order (Z-A, 9-0).
    --
    -- Results are sorted by @FilterVariable@.
    sortOrder :: Prelude.Maybe SortOrder,
    -- | The equal to operator. The @Evaluation@ results will have
    -- @FilterVariable@ values that exactly match the value specified with
    -- @EQ@.
    eQ :: Prelude.Maybe Prelude.Text,
    -- | The ID of the page in the paginated results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Use one of the following variable to filter a list of @Evaluation@
    -- objects:
    --
    -- -   @CreatedAt@ - Sets the search criteria to the @Evaluation@ creation
    --     date.
    -- -   @Status@ - Sets the search criteria to the @Evaluation@ status.
    -- -   @Name@ - Sets the search criteria to the contents of @Evaluation@
    --     ____ @Name@.
    -- -   @IAMUser@ - Sets the search criteria to the user account that
    --     invoked an @Evaluation@.
    -- -   @MLModelId@ - Sets the search criteria to the @MLModel@ that was
    --     evaluated.
    -- -   @DataSourceId@ - Sets the search criteria to the @DataSource@ used
    --     in @Evaluation@.
    -- -   @DataUri@ - Sets the search criteria to the data file(s) used in
    --     @Evaluation@. The URL can identify either a file or an Amazon Simple
    --     Storage Solution (Amazon S3) bucket or directory.
    filterVariable :: Prelude.Maybe EvaluationFilterVariable,
    -- | The greater than operator. The @Evaluation@ results will have
    -- @FilterVariable@ values that are greater than the value specified with
    -- @GT@.
    gT :: Prelude.Maybe Prelude.Text,
    -- | The not equal to operator. The @Evaluation@ results will have
    -- @FilterVariable@ values not equal to the value specified with @NE@.
    nE :: Prelude.Maybe Prelude.Text,
    -- | A string that is found at the beginning of a variable, such as @Name@ or
    -- @Id@.
    --
    -- For example, an @Evaluation@ could have the @Name@
    -- @2014-09-09-HolidayGiftMailer@. To search for this @Evaluation@, select
    -- @Name@ for the @FilterVariable@ and any of the following strings for the
    -- @Prefix@:
    --
    -- -   2014-09
    --
    -- -   2014-09-09
    --
    -- -   2014-09-09-Holiday
    prefix :: Prelude.Maybe Prelude.Text,
    -- | The greater than or equal to operator. The @Evaluation@ results will
    -- have @FilterVariable@ values that are greater than or equal to the value
    -- specified with @GE@.
    gE :: Prelude.Maybe Prelude.Text,
    -- | The less than or equal to operator. The @Evaluation@ results will have
    -- @FilterVariable@ values that are less than or equal to the value
    -- specified with @LE@.
    lE :: Prelude.Maybe Prelude.Text,
    -- | The less than operator. The @Evaluation@ results will have
    -- @FilterVariable@ values that are less than the value specified with
    -- @LT@.
    lT :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of @Evaluation@ to include in the result.
    limit :: Prelude.Maybe Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeEvaluations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortOrder', 'describeEvaluations_sortOrder' - A two-value parameter that determines the sequence of the resulting list
-- of @Evaluation@.
--
-- -   @asc@ - Arranges the list in ascending order (A-Z, 0-9).
-- -   @dsc@ - Arranges the list in descending order (Z-A, 9-0).
--
-- Results are sorted by @FilterVariable@.
--
-- 'eQ', 'describeEvaluations_eQ' - The equal to operator. The @Evaluation@ results will have
-- @FilterVariable@ values that exactly match the value specified with
-- @EQ@.
--
-- 'nextToken', 'describeEvaluations_nextToken' - The ID of the page in the paginated results.
--
-- 'filterVariable', 'describeEvaluations_filterVariable' - Use one of the following variable to filter a list of @Evaluation@
-- objects:
--
-- -   @CreatedAt@ - Sets the search criteria to the @Evaluation@ creation
--     date.
-- -   @Status@ - Sets the search criteria to the @Evaluation@ status.
-- -   @Name@ - Sets the search criteria to the contents of @Evaluation@
--     ____ @Name@.
-- -   @IAMUser@ - Sets the search criteria to the user account that
--     invoked an @Evaluation@.
-- -   @MLModelId@ - Sets the search criteria to the @MLModel@ that was
--     evaluated.
-- -   @DataSourceId@ - Sets the search criteria to the @DataSource@ used
--     in @Evaluation@.
-- -   @DataUri@ - Sets the search criteria to the data file(s) used in
--     @Evaluation@. The URL can identify either a file or an Amazon Simple
--     Storage Solution (Amazon S3) bucket or directory.
--
-- 'gT', 'describeEvaluations_gT' - The greater than operator. The @Evaluation@ results will have
-- @FilterVariable@ values that are greater than the value specified with
-- @GT@.
--
-- 'nE', 'describeEvaluations_nE' - The not equal to operator. The @Evaluation@ results will have
-- @FilterVariable@ values not equal to the value specified with @NE@.
--
-- 'prefix', 'describeEvaluations_prefix' - A string that is found at the beginning of a variable, such as @Name@ or
-- @Id@.
--
-- For example, an @Evaluation@ could have the @Name@
-- @2014-09-09-HolidayGiftMailer@. To search for this @Evaluation@, select
-- @Name@ for the @FilterVariable@ and any of the following strings for the
-- @Prefix@:
--
-- -   2014-09
--
-- -   2014-09-09
--
-- -   2014-09-09-Holiday
--
-- 'gE', 'describeEvaluations_gE' - The greater than or equal to operator. The @Evaluation@ results will
-- have @FilterVariable@ values that are greater than or equal to the value
-- specified with @GE@.
--
-- 'lE', 'describeEvaluations_lE' - The less than or equal to operator. The @Evaluation@ results will have
-- @FilterVariable@ values that are less than or equal to the value
-- specified with @LE@.
--
-- 'lT', 'describeEvaluations_lT' - The less than operator. The @Evaluation@ results will have
-- @FilterVariable@ values that are less than the value specified with
-- @LT@.
--
-- 'limit', 'describeEvaluations_limit' - The maximum number of @Evaluation@ to include in the result.
newDescribeEvaluations ::
  DescribeEvaluations
newDescribeEvaluations =
  DescribeEvaluations'
    { sortOrder = Prelude.Nothing,
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
-- of @Evaluation@.
--
-- -   @asc@ - Arranges the list in ascending order (A-Z, 0-9).
-- -   @dsc@ - Arranges the list in descending order (Z-A, 9-0).
--
-- Results are sorted by @FilterVariable@.
describeEvaluations_sortOrder :: Lens.Lens' DescribeEvaluations (Prelude.Maybe SortOrder)
describeEvaluations_sortOrder = Lens.lens (\DescribeEvaluations' {sortOrder} -> sortOrder) (\s@DescribeEvaluations' {} a -> s {sortOrder = a} :: DescribeEvaluations)

-- | The equal to operator. The @Evaluation@ results will have
-- @FilterVariable@ values that exactly match the value specified with
-- @EQ@.
describeEvaluations_eQ :: Lens.Lens' DescribeEvaluations (Prelude.Maybe Prelude.Text)
describeEvaluations_eQ = Lens.lens (\DescribeEvaluations' {eQ} -> eQ) (\s@DescribeEvaluations' {} a -> s {eQ = a} :: DescribeEvaluations)

-- | The ID of the page in the paginated results.
describeEvaluations_nextToken :: Lens.Lens' DescribeEvaluations (Prelude.Maybe Prelude.Text)
describeEvaluations_nextToken = Lens.lens (\DescribeEvaluations' {nextToken} -> nextToken) (\s@DescribeEvaluations' {} a -> s {nextToken = a} :: DescribeEvaluations)

-- | Use one of the following variable to filter a list of @Evaluation@
-- objects:
--
-- -   @CreatedAt@ - Sets the search criteria to the @Evaluation@ creation
--     date.
-- -   @Status@ - Sets the search criteria to the @Evaluation@ status.
-- -   @Name@ - Sets the search criteria to the contents of @Evaluation@
--     ____ @Name@.
-- -   @IAMUser@ - Sets the search criteria to the user account that
--     invoked an @Evaluation@.
-- -   @MLModelId@ - Sets the search criteria to the @MLModel@ that was
--     evaluated.
-- -   @DataSourceId@ - Sets the search criteria to the @DataSource@ used
--     in @Evaluation@.
-- -   @DataUri@ - Sets the search criteria to the data file(s) used in
--     @Evaluation@. The URL can identify either a file or an Amazon Simple
--     Storage Solution (Amazon S3) bucket or directory.
describeEvaluations_filterVariable :: Lens.Lens' DescribeEvaluations (Prelude.Maybe EvaluationFilterVariable)
describeEvaluations_filterVariable = Lens.lens (\DescribeEvaluations' {filterVariable} -> filterVariable) (\s@DescribeEvaluations' {} a -> s {filterVariable = a} :: DescribeEvaluations)

-- | The greater than operator. The @Evaluation@ results will have
-- @FilterVariable@ values that are greater than the value specified with
-- @GT@.
describeEvaluations_gT :: Lens.Lens' DescribeEvaluations (Prelude.Maybe Prelude.Text)
describeEvaluations_gT = Lens.lens (\DescribeEvaluations' {gT} -> gT) (\s@DescribeEvaluations' {} a -> s {gT = a} :: DescribeEvaluations)

-- | The not equal to operator. The @Evaluation@ results will have
-- @FilterVariable@ values not equal to the value specified with @NE@.
describeEvaluations_nE :: Lens.Lens' DescribeEvaluations (Prelude.Maybe Prelude.Text)
describeEvaluations_nE = Lens.lens (\DescribeEvaluations' {nE} -> nE) (\s@DescribeEvaluations' {} a -> s {nE = a} :: DescribeEvaluations)

-- | A string that is found at the beginning of a variable, such as @Name@ or
-- @Id@.
--
-- For example, an @Evaluation@ could have the @Name@
-- @2014-09-09-HolidayGiftMailer@. To search for this @Evaluation@, select
-- @Name@ for the @FilterVariable@ and any of the following strings for the
-- @Prefix@:
--
-- -   2014-09
--
-- -   2014-09-09
--
-- -   2014-09-09-Holiday
describeEvaluations_prefix :: Lens.Lens' DescribeEvaluations (Prelude.Maybe Prelude.Text)
describeEvaluations_prefix = Lens.lens (\DescribeEvaluations' {prefix} -> prefix) (\s@DescribeEvaluations' {} a -> s {prefix = a} :: DescribeEvaluations)

-- | The greater than or equal to operator. The @Evaluation@ results will
-- have @FilterVariable@ values that are greater than or equal to the value
-- specified with @GE@.
describeEvaluations_gE :: Lens.Lens' DescribeEvaluations (Prelude.Maybe Prelude.Text)
describeEvaluations_gE = Lens.lens (\DescribeEvaluations' {gE} -> gE) (\s@DescribeEvaluations' {} a -> s {gE = a} :: DescribeEvaluations)

-- | The less than or equal to operator. The @Evaluation@ results will have
-- @FilterVariable@ values that are less than or equal to the value
-- specified with @LE@.
describeEvaluations_lE :: Lens.Lens' DescribeEvaluations (Prelude.Maybe Prelude.Text)
describeEvaluations_lE = Lens.lens (\DescribeEvaluations' {lE} -> lE) (\s@DescribeEvaluations' {} a -> s {lE = a} :: DescribeEvaluations)

-- | The less than operator. The @Evaluation@ results will have
-- @FilterVariable@ values that are less than the value specified with
-- @LT@.
describeEvaluations_lT :: Lens.Lens' DescribeEvaluations (Prelude.Maybe Prelude.Text)
describeEvaluations_lT = Lens.lens (\DescribeEvaluations' {lT} -> lT) (\s@DescribeEvaluations' {} a -> s {lT = a} :: DescribeEvaluations)

-- | The maximum number of @Evaluation@ to include in the result.
describeEvaluations_limit :: Lens.Lens' DescribeEvaluations (Prelude.Maybe Prelude.Natural)
describeEvaluations_limit = Lens.lens (\DescribeEvaluations' {limit} -> limit) (\s@DescribeEvaluations' {} a -> s {limit = a} :: DescribeEvaluations) Prelude.. Lens.mapping Prelude._Nat

instance Pager.AWSPager DescribeEvaluations where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? describeEvaluationsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? describeEvaluationsResponse_results
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& describeEvaluations_nextToken
          Lens..~ rs
          Lens.^? describeEvaluationsResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest DescribeEvaluations where
  type
    Rs DescribeEvaluations =
      DescribeEvaluationsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeEvaluationsResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
            Prelude.<*> (x Prelude..?> "Results" Prelude..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeEvaluations

instance Prelude.NFData DescribeEvaluations

instance Prelude.ToHeaders DescribeEvaluations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AmazonML_20141212.DescribeEvaluations" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DescribeEvaluations where
  toJSON DescribeEvaluations' {..} =
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

instance Prelude.ToPath DescribeEvaluations where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeEvaluations where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the query results from a @DescribeEvaluations@ operation. The
-- content is essentially a list of @Evaluation@.
--
-- /See:/ 'newDescribeEvaluationsResponse' smart constructor.
data DescribeEvaluationsResponse = DescribeEvaluationsResponse'
  { -- | The ID of the next page in the paginated results that indicates at least
    -- one more page follows.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of @Evaluation@ that meet the search criteria.
    results :: Prelude.Maybe [Evaluation],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeEvaluationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeEvaluationsResponse_nextToken' - The ID of the next page in the paginated results that indicates at least
-- one more page follows.
--
-- 'results', 'describeEvaluationsResponse_results' - A list of @Evaluation@ that meet the search criteria.
--
-- 'httpStatus', 'describeEvaluationsResponse_httpStatus' - The response's http status code.
newDescribeEvaluationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeEvaluationsResponse
newDescribeEvaluationsResponse pHttpStatus_ =
  DescribeEvaluationsResponse'
    { nextToken =
        Prelude.Nothing,
      results = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID of the next page in the paginated results that indicates at least
-- one more page follows.
describeEvaluationsResponse_nextToken :: Lens.Lens' DescribeEvaluationsResponse (Prelude.Maybe Prelude.Text)
describeEvaluationsResponse_nextToken = Lens.lens (\DescribeEvaluationsResponse' {nextToken} -> nextToken) (\s@DescribeEvaluationsResponse' {} a -> s {nextToken = a} :: DescribeEvaluationsResponse)

-- | A list of @Evaluation@ that meet the search criteria.
describeEvaluationsResponse_results :: Lens.Lens' DescribeEvaluationsResponse (Prelude.Maybe [Evaluation])
describeEvaluationsResponse_results = Lens.lens (\DescribeEvaluationsResponse' {results} -> results) (\s@DescribeEvaluationsResponse' {} a -> s {results = a} :: DescribeEvaluationsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
describeEvaluationsResponse_httpStatus :: Lens.Lens' DescribeEvaluationsResponse Prelude.Int
describeEvaluationsResponse_httpStatus = Lens.lens (\DescribeEvaluationsResponse' {httpStatus} -> httpStatus) (\s@DescribeEvaluationsResponse' {} a -> s {httpStatus = a} :: DescribeEvaluationsResponse)

instance Prelude.NFData DescribeEvaluationsResponse
