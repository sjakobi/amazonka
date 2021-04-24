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
-- Module      : Network.AWS.IoT.DescribeScheduledAudit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a scheduled audit.
module Network.AWS.IoT.DescribeScheduledAudit
  ( -- * Creating a Request
    describeScheduledAudit,
    DescribeScheduledAudit,

    -- * Request Lenses
    dsaScheduledAuditName,

    -- * Destructuring the Response
    describeScheduledAuditResponse,
    DescribeScheduledAuditResponse,

    -- * Response Lenses
    dsarsrsDayOfWeek,
    dsarsrsScheduledAuditARN,
    dsarsrsScheduledAuditName,
    dsarsrsDayOfMonth,
    dsarsrsFrequency,
    dsarsrsTargetCheckNames,
    dsarsrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeScheduledAudit' smart constructor.
newtype DescribeScheduledAudit = DescribeScheduledAudit'
  { _dsaScheduledAuditName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeScheduledAudit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsaScheduledAuditName' - The name of the scheduled audit whose information you want to get.
describeScheduledAudit ::
  -- | 'dsaScheduledAuditName'
  Text ->
  DescribeScheduledAudit
describeScheduledAudit pScheduledAuditName_ =
  DescribeScheduledAudit'
    { _dsaScheduledAuditName =
        pScheduledAuditName_
    }

-- | The name of the scheduled audit whose information you want to get.
dsaScheduledAuditName :: Lens' DescribeScheduledAudit Text
dsaScheduledAuditName = lens _dsaScheduledAuditName (\s a -> s {_dsaScheduledAuditName = a})

instance AWSRequest DescribeScheduledAudit where
  type
    Rs DescribeScheduledAudit =
      DescribeScheduledAuditResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeScheduledAuditResponse'
            <$> (x .?> "dayOfWeek")
            <*> (x .?> "scheduledAuditArn")
            <*> (x .?> "scheduledAuditName")
            <*> (x .?> "dayOfMonth")
            <*> (x .?> "frequency")
            <*> (x .?> "targetCheckNames" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeScheduledAudit

instance NFData DescribeScheduledAudit

instance ToHeaders DescribeScheduledAudit where
  toHeaders = const mempty

instance ToPath DescribeScheduledAudit where
  toPath DescribeScheduledAudit' {..} =
    mconcat
      [ "/audit/scheduledaudits/",
        toBS _dsaScheduledAuditName
      ]

instance ToQuery DescribeScheduledAudit where
  toQuery = const mempty

-- | /See:/ 'describeScheduledAuditResponse' smart constructor.
data DescribeScheduledAuditResponse = DescribeScheduledAuditResponse'
  { _dsarsrsDayOfWeek ::
      !( Maybe
           DayOfWeek
       ),
    _dsarsrsScheduledAuditARN ::
      !( Maybe
           Text
       ),
    _dsarsrsScheduledAuditName ::
      !( Maybe
           Text
       ),
    _dsarsrsDayOfMonth ::
      !( Maybe
           Text
       ),
    _dsarsrsFrequency ::
      !( Maybe
           AuditFrequency
       ),
    _dsarsrsTargetCheckNames ::
      !( Maybe
           [Text]
       ),
    _dsarsrsResponseStatus ::
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

-- | Creates a value of 'DescribeScheduledAuditResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsarsrsDayOfWeek' - The day of the week on which the scheduled audit takes place, either one of @SUN@ , @MON@ , @TUE@ , @WED@ , @THU@ , @FRI@ , or @SAT@ .
--
-- * 'dsarsrsScheduledAuditARN' - The ARN of the scheduled audit.
--
-- * 'dsarsrsScheduledAuditName' - The name of the scheduled audit.
--
-- * 'dsarsrsDayOfMonth' - The day of the month on which the scheduled audit takes place. This is will be @1@ through @31@ or @LAST@ . If days @29@ -@31@ are specified, and the month does not have that many days, the audit takes place on the @LAST@ day of the month.
--
-- * 'dsarsrsFrequency' - How often the scheduled audit takes place, either one of @DAILY@ , @WEEKLY@ , @BIWEEKLY@ , or @MONTHLY@ . The start time of each audit is determined by the system.
--
-- * 'dsarsrsTargetCheckNames' - Which checks are performed during the scheduled audit. Checks must be enabled for your account. (Use @DescribeAccountAuditConfiguration@ to see the list of all checks, including those that are enabled or use @UpdateAccountAuditConfiguration@ to select which checks are enabled.)
--
-- * 'dsarsrsResponseStatus' - -- | The response status code.
describeScheduledAuditResponse ::
  -- | 'dsarsrsResponseStatus'
  Int ->
  DescribeScheduledAuditResponse
describeScheduledAuditResponse pResponseStatus_ =
  DescribeScheduledAuditResponse'
    { _dsarsrsDayOfWeek =
        Nothing,
      _dsarsrsScheduledAuditARN = Nothing,
      _dsarsrsScheduledAuditName = Nothing,
      _dsarsrsDayOfMonth = Nothing,
      _dsarsrsFrequency = Nothing,
      _dsarsrsTargetCheckNames = Nothing,
      _dsarsrsResponseStatus = pResponseStatus_
    }

-- | The day of the week on which the scheduled audit takes place, either one of @SUN@ , @MON@ , @TUE@ , @WED@ , @THU@ , @FRI@ , or @SAT@ .
dsarsrsDayOfWeek :: Lens' DescribeScheduledAuditResponse (Maybe DayOfWeek)
dsarsrsDayOfWeek = lens _dsarsrsDayOfWeek (\s a -> s {_dsarsrsDayOfWeek = a})

-- | The ARN of the scheduled audit.
dsarsrsScheduledAuditARN :: Lens' DescribeScheduledAuditResponse (Maybe Text)
dsarsrsScheduledAuditARN = lens _dsarsrsScheduledAuditARN (\s a -> s {_dsarsrsScheduledAuditARN = a})

-- | The name of the scheduled audit.
dsarsrsScheduledAuditName :: Lens' DescribeScheduledAuditResponse (Maybe Text)
dsarsrsScheduledAuditName = lens _dsarsrsScheduledAuditName (\s a -> s {_dsarsrsScheduledAuditName = a})

-- | The day of the month on which the scheduled audit takes place. This is will be @1@ through @31@ or @LAST@ . If days @29@ -@31@ are specified, and the month does not have that many days, the audit takes place on the @LAST@ day of the month.
dsarsrsDayOfMonth :: Lens' DescribeScheduledAuditResponse (Maybe Text)
dsarsrsDayOfMonth = lens _dsarsrsDayOfMonth (\s a -> s {_dsarsrsDayOfMonth = a})

-- | How often the scheduled audit takes place, either one of @DAILY@ , @WEEKLY@ , @BIWEEKLY@ , or @MONTHLY@ . The start time of each audit is determined by the system.
dsarsrsFrequency :: Lens' DescribeScheduledAuditResponse (Maybe AuditFrequency)
dsarsrsFrequency = lens _dsarsrsFrequency (\s a -> s {_dsarsrsFrequency = a})

-- | Which checks are performed during the scheduled audit. Checks must be enabled for your account. (Use @DescribeAccountAuditConfiguration@ to see the list of all checks, including those that are enabled or use @UpdateAccountAuditConfiguration@ to select which checks are enabled.)
dsarsrsTargetCheckNames :: Lens' DescribeScheduledAuditResponse [Text]
dsarsrsTargetCheckNames = lens _dsarsrsTargetCheckNames (\s a -> s {_dsarsrsTargetCheckNames = a}) . _Default . _Coerce

-- | -- | The response status code.
dsarsrsResponseStatus :: Lens' DescribeScheduledAuditResponse Int
dsarsrsResponseStatus = lens _dsarsrsResponseStatus (\s a -> s {_dsarsrsResponseStatus = a})

instance NFData DescribeScheduledAuditResponse
