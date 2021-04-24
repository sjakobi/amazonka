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
-- Module      : Network.AWS.IoT.UpdateScheduledAudit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a scheduled audit, including which checks are performed and how often the audit takes place.
module Network.AWS.IoT.UpdateScheduledAudit
  ( -- * Creating a Request
    updateScheduledAudit,
    UpdateScheduledAudit,

    -- * Request Lenses
    usaDayOfWeek,
    usaDayOfMonth,
    usaFrequency,
    usaTargetCheckNames,
    usaScheduledAuditName,

    -- * Destructuring the Response
    updateScheduledAuditResponse,
    UpdateScheduledAuditResponse,

    -- * Response Lenses
    usarrsScheduledAuditARN,
    usarrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateScheduledAudit' smart constructor.
data UpdateScheduledAudit = UpdateScheduledAudit'
  { _usaDayOfWeek ::
      !(Maybe DayOfWeek),
    _usaDayOfMonth ::
      !(Maybe Text),
    _usaFrequency ::
      !(Maybe AuditFrequency),
    _usaTargetCheckNames ::
      !(Maybe [Text]),
    _usaScheduledAuditName ::
      !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateScheduledAudit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usaDayOfWeek' - The day of the week on which the scheduled audit takes place. This can be one of @SUN@ , @MON@ , @TUE@ , @WED@ , @THU@ , @FRI@ , or @SAT@ . This field is required if the "frequency" parameter is set to @WEEKLY@ or @BIWEEKLY@ .
--
-- * 'usaDayOfMonth' - The day of the month on which the scheduled audit takes place. This can be @1@ through @31@ or @LAST@ . This field is required if the @frequency@ parameter is set to @MONTHLY@ . If days 29-31 are specified, and the month does not have that many days, the audit takes place on the "LAST" day of the month.
--
-- * 'usaFrequency' - How often the scheduled audit takes place, either @DAILY@ , @WEEKLY@ , @BIWEEKLY@ , or @MONTHLY@ . The start time of each audit is determined by the system.
--
-- * 'usaTargetCheckNames' - Which checks are performed during the scheduled audit. Checks must be enabled for your account. (Use @DescribeAccountAuditConfiguration@ to see the list of all checks, including those that are enabled or use @UpdateAccountAuditConfiguration@ to select which checks are enabled.)
--
-- * 'usaScheduledAuditName' - The name of the scheduled audit. (Max. 128 chars)
updateScheduledAudit ::
  -- | 'usaScheduledAuditName'
  Text ->
  UpdateScheduledAudit
updateScheduledAudit pScheduledAuditName_ =
  UpdateScheduledAudit'
    { _usaDayOfWeek = Nothing,
      _usaDayOfMonth = Nothing,
      _usaFrequency = Nothing,
      _usaTargetCheckNames = Nothing,
      _usaScheduledAuditName = pScheduledAuditName_
    }

-- | The day of the week on which the scheduled audit takes place. This can be one of @SUN@ , @MON@ , @TUE@ , @WED@ , @THU@ , @FRI@ , or @SAT@ . This field is required if the "frequency" parameter is set to @WEEKLY@ or @BIWEEKLY@ .
usaDayOfWeek :: Lens' UpdateScheduledAudit (Maybe DayOfWeek)
usaDayOfWeek = lens _usaDayOfWeek (\s a -> s {_usaDayOfWeek = a})

-- | The day of the month on which the scheduled audit takes place. This can be @1@ through @31@ or @LAST@ . This field is required if the @frequency@ parameter is set to @MONTHLY@ . If days 29-31 are specified, and the month does not have that many days, the audit takes place on the "LAST" day of the month.
usaDayOfMonth :: Lens' UpdateScheduledAudit (Maybe Text)
usaDayOfMonth = lens _usaDayOfMonth (\s a -> s {_usaDayOfMonth = a})

-- | How often the scheduled audit takes place, either @DAILY@ , @WEEKLY@ , @BIWEEKLY@ , or @MONTHLY@ . The start time of each audit is determined by the system.
usaFrequency :: Lens' UpdateScheduledAudit (Maybe AuditFrequency)
usaFrequency = lens _usaFrequency (\s a -> s {_usaFrequency = a})

-- | Which checks are performed during the scheduled audit. Checks must be enabled for your account. (Use @DescribeAccountAuditConfiguration@ to see the list of all checks, including those that are enabled or use @UpdateAccountAuditConfiguration@ to select which checks are enabled.)
usaTargetCheckNames :: Lens' UpdateScheduledAudit [Text]
usaTargetCheckNames = lens _usaTargetCheckNames (\s a -> s {_usaTargetCheckNames = a}) . _Default . _Coerce

-- | The name of the scheduled audit. (Max. 128 chars)
usaScheduledAuditName :: Lens' UpdateScheduledAudit Text
usaScheduledAuditName = lens _usaScheduledAuditName (\s a -> s {_usaScheduledAuditName = a})

instance AWSRequest UpdateScheduledAudit where
  type
    Rs UpdateScheduledAudit =
      UpdateScheduledAuditResponse
  request = patchJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          UpdateScheduledAuditResponse'
            <$> (x .?> "scheduledAuditArn") <*> (pure (fromEnum s))
      )

instance Hashable UpdateScheduledAudit

instance NFData UpdateScheduledAudit

instance ToHeaders UpdateScheduledAudit where
  toHeaders = const mempty

instance ToJSON UpdateScheduledAudit where
  toJSON UpdateScheduledAudit' {..} =
    object
      ( catMaybes
          [ ("dayOfWeek" .=) <$> _usaDayOfWeek,
            ("dayOfMonth" .=) <$> _usaDayOfMonth,
            ("frequency" .=) <$> _usaFrequency,
            ("targetCheckNames" .=) <$> _usaTargetCheckNames
          ]
      )

instance ToPath UpdateScheduledAudit where
  toPath UpdateScheduledAudit' {..} =
    mconcat
      [ "/audit/scheduledaudits/",
        toBS _usaScheduledAuditName
      ]

instance ToQuery UpdateScheduledAudit where
  toQuery = const mempty

-- | /See:/ 'updateScheduledAuditResponse' smart constructor.
data UpdateScheduledAuditResponse = UpdateScheduledAuditResponse'
  { _usarrsScheduledAuditARN ::
      !(Maybe Text),
    _usarrsResponseStatus ::
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

-- | Creates a value of 'UpdateScheduledAuditResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usarrsScheduledAuditARN' - The ARN of the scheduled audit.
--
-- * 'usarrsResponseStatus' - -- | The response status code.
updateScheduledAuditResponse ::
  -- | 'usarrsResponseStatus'
  Int ->
  UpdateScheduledAuditResponse
updateScheduledAuditResponse pResponseStatus_ =
  UpdateScheduledAuditResponse'
    { _usarrsScheduledAuditARN =
        Nothing,
      _usarrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the scheduled audit.
usarrsScheduledAuditARN :: Lens' UpdateScheduledAuditResponse (Maybe Text)
usarrsScheduledAuditARN = lens _usarrsScheduledAuditARN (\s a -> s {_usarrsScheduledAuditARN = a})

-- | -- | The response status code.
usarrsResponseStatus :: Lens' UpdateScheduledAuditResponse Int
usarrsResponseStatus = lens _usarrsResponseStatus (\s a -> s {_usarrsResponseStatus = a})

instance NFData UpdateScheduledAuditResponse
