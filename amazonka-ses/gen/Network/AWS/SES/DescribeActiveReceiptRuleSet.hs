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
-- Module      : Network.AWS.SES.DescribeActiveReceiptRuleSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the metadata and receipt rules for the receipt rule set that is currently active.
--
--
-- For information about setting up receipt rule sets, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html Amazon SES Developer Guide> .
--
-- You can execute this operation no more than once per second.
module Network.AWS.SES.DescribeActiveReceiptRuleSet
  ( -- * Creating a Request
    describeActiveReceiptRuleSet,
    DescribeActiveReceiptRuleSet,

    -- * Destructuring the Response
    describeActiveReceiptRuleSetResponse,
    DescribeActiveReceiptRuleSetResponse,

    -- * Response Lenses
    darrsrrsRules,
    darrsrrsMetadata,
    darrsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SES.Types

-- | Represents a request to return the metadata and receipt rules for the receipt rule set that is currently active. You use receipt rule sets to receive email with Amazon SES. For more information, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html Amazon SES Developer Guide> .
--
--
--
-- /See:/ 'describeActiveReceiptRuleSet' smart constructor.
data DescribeActiveReceiptRuleSet = DescribeActiveReceiptRuleSet'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeActiveReceiptRuleSet' with the minimum fields required to make a request.
describeActiveReceiptRuleSet ::
  DescribeActiveReceiptRuleSet
describeActiveReceiptRuleSet =
  DescribeActiveReceiptRuleSet'

instance AWSRequest DescribeActiveReceiptRuleSet where
  type
    Rs DescribeActiveReceiptRuleSet =
      DescribeActiveReceiptRuleSetResponse
  request = postQuery ses
  response =
    receiveXMLWrapper
      "DescribeActiveReceiptRuleSetResult"
      ( \s h x ->
          DescribeActiveReceiptRuleSetResponse'
            <$> ( x .@? "Rules" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "Metadata")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeActiveReceiptRuleSet

instance NFData DescribeActiveReceiptRuleSet

instance ToHeaders DescribeActiveReceiptRuleSet where
  toHeaders = const mempty

instance ToPath DescribeActiveReceiptRuleSet where
  toPath = const "/"

instance ToQuery DescribeActiveReceiptRuleSet where
  toQuery =
    const
      ( mconcat
          [ "Action"
              =: ("DescribeActiveReceiptRuleSet" :: ByteString),
            "Version" =: ("2010-12-01" :: ByteString)
          ]
      )

-- | Represents the metadata and receipt rules for the receipt rule set that is currently active.
--
--
--
-- /See:/ 'describeActiveReceiptRuleSetResponse' smart constructor.
data DescribeActiveReceiptRuleSetResponse = DescribeActiveReceiptRuleSetResponse'
  { _darrsrrsRules ::
      !( Maybe
           [ReceiptRule]
       ),
    _darrsrrsMetadata ::
      !( Maybe
           ReceiptRuleSetMetadata
       ),
    _darrsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeActiveReceiptRuleSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darrsrrsRules' - The receipt rules that belong to the active rule set.
--
-- * 'darrsrrsMetadata' - The metadata for the currently active receipt rule set. The metadata consists of the rule set name and a timestamp of when the rule set was created.
--
-- * 'darrsrrsResponseStatus' - -- | The response status code.
describeActiveReceiptRuleSetResponse ::
  -- | 'darrsrrsResponseStatus'
  Int ->
  DescribeActiveReceiptRuleSetResponse
describeActiveReceiptRuleSetResponse pResponseStatus_ =
  DescribeActiveReceiptRuleSetResponse'
    { _darrsrrsRules =
        Nothing,
      _darrsrrsMetadata = Nothing,
      _darrsrrsResponseStatus =
        pResponseStatus_
    }

-- | The receipt rules that belong to the active rule set.
darrsrrsRules :: Lens' DescribeActiveReceiptRuleSetResponse [ReceiptRule]
darrsrrsRules = lens _darrsrrsRules (\s a -> s {_darrsrrsRules = a}) . _Default . _Coerce

-- | The metadata for the currently active receipt rule set. The metadata consists of the rule set name and a timestamp of when the rule set was created.
darrsrrsMetadata :: Lens' DescribeActiveReceiptRuleSetResponse (Maybe ReceiptRuleSetMetadata)
darrsrrsMetadata = lens _darrsrrsMetadata (\s a -> s {_darrsrrsMetadata = a})

-- | -- | The response status code.
darrsrrsResponseStatus :: Lens' DescribeActiveReceiptRuleSetResponse Int
darrsrrsResponseStatus = lens _darrsrrsResponseStatus (\s a -> s {_darrsrrsResponseStatus = a})

instance NFData DescribeActiveReceiptRuleSetResponse
