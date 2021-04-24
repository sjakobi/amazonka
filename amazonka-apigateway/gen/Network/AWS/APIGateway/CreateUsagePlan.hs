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
-- Module      : Network.AWS.APIGateway.CreateUsagePlan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a usage plan with the throttle and quota limits, as well as the associated API stages, specified in the payload.
module Network.AWS.APIGateway.CreateUsagePlan
  ( -- * Creating a Request
    createUsagePlan,
    CreateUsagePlan,

    -- * Request Lenses
    cupApiStages,
    cupTags,
    cupDescription,
    cupQuota,
    cupThrottle,
    cupName,

    -- * Destructuring the Response
    usagePlan,
    UsagePlan,

    -- * Response Lenses
    upId,
    upName,
    upApiStages,
    upTags,
    upDescription,
    upQuota,
    upProductCode,
    upThrottle,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The POST request to create a usage plan with the name, description, throttle limits and quota limits, as well as the associated API stages, specified in the payload.
--
--
--
-- /See:/ 'createUsagePlan' smart constructor.
data CreateUsagePlan = CreateUsagePlan'
  { _cupApiStages ::
      !(Maybe [APIStage]),
    _cupTags :: !(Maybe (Map Text Text)),
    _cupDescription :: !(Maybe Text),
    _cupQuota :: !(Maybe QuotaSettings),
    _cupThrottle ::
      !(Maybe ThrottleSettings),
    _cupName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateUsagePlan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cupApiStages' - The associated API stages of the usage plan.
--
-- * 'cupTags' - The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with @aws:@ . The tag value can be up to 256 characters.
--
-- * 'cupDescription' - The description of the usage plan.
--
-- * 'cupQuota' - The quota of the usage plan.
--
-- * 'cupThrottle' - The throttling limits of the usage plan.
--
-- * 'cupName' - [Required] The name of the usage plan.
createUsagePlan ::
  -- | 'cupName'
  Text ->
  CreateUsagePlan
createUsagePlan pName_ =
  CreateUsagePlan'
    { _cupApiStages = Nothing,
      _cupTags = Nothing,
      _cupDescription = Nothing,
      _cupQuota = Nothing,
      _cupThrottle = Nothing,
      _cupName = pName_
    }

-- | The associated API stages of the usage plan.
cupApiStages :: Lens' CreateUsagePlan [APIStage]
cupApiStages = lens _cupApiStages (\s a -> s {_cupApiStages = a}) . _Default . _Coerce

-- | The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with @aws:@ . The tag value can be up to 256 characters.
cupTags :: Lens' CreateUsagePlan (HashMap Text Text)
cupTags = lens _cupTags (\s a -> s {_cupTags = a}) . _Default . _Map

-- | The description of the usage plan.
cupDescription :: Lens' CreateUsagePlan (Maybe Text)
cupDescription = lens _cupDescription (\s a -> s {_cupDescription = a})

-- | The quota of the usage plan.
cupQuota :: Lens' CreateUsagePlan (Maybe QuotaSettings)
cupQuota = lens _cupQuota (\s a -> s {_cupQuota = a})

-- | The throttling limits of the usage plan.
cupThrottle :: Lens' CreateUsagePlan (Maybe ThrottleSettings)
cupThrottle = lens _cupThrottle (\s a -> s {_cupThrottle = a})

-- | [Required] The name of the usage plan.
cupName :: Lens' CreateUsagePlan Text
cupName = lens _cupName (\s a -> s {_cupName = a})

instance AWSRequest CreateUsagePlan where
  type Rs CreateUsagePlan = UsagePlan
  request = postJSON apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable CreateUsagePlan

instance NFData CreateUsagePlan

instance ToHeaders CreateUsagePlan where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToJSON CreateUsagePlan where
  toJSON CreateUsagePlan' {..} =
    object
      ( catMaybes
          [ ("apiStages" .=) <$> _cupApiStages,
            ("tags" .=) <$> _cupTags,
            ("description" .=) <$> _cupDescription,
            ("quota" .=) <$> _cupQuota,
            ("throttle" .=) <$> _cupThrottle,
            Just ("name" .= _cupName)
          ]
      )

instance ToPath CreateUsagePlan where
  toPath = const "/usageplans"

instance ToQuery CreateUsagePlan where
  toQuery = const mempty
