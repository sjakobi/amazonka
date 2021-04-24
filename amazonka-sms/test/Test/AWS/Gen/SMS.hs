{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.SMS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.SMS where

import Data.Proxy
import Network.AWS.SMS
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.SMS.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGenerateChangeSet $
--             generateChangeSet
--
--         , requestImportAppCatalog $
--             importAppCatalog
--
--         , requestLaunchApp $
--             launchApp
--
--         , requestGetAppValidationConfiguration $
--             getAppValidationConfiguration
--
--         , requestPutAppReplicationConfiguration $
--             putAppReplicationConfiguration
--
--         , requestGetConnectors $
--             getConnectors
--
--         , requestGenerateTemplate $
--             generateTemplate
--
--         , requestPutAppValidationConfiguration $
--             putAppValidationConfiguration
--
--         , requestStartOnDemandReplicationRun $
--             startOnDemandReplicationRun
--
--         , requestTerminateApp $
--             terminateApp
--
--         , requestListApps $
--             listApps
--
--         , requestGetReplicationRuns $
--             getReplicationRuns
--
--         , requestGetServers $
--             getServers
--
--         , requestStartAppReplication $
--             startAppReplication
--
--         , requestPutAppLaunchConfiguration $
--             putAppLaunchConfiguration
--
--         , requestStopAppReplication $
--             stopAppReplication
--
--         , requestCreateReplicationJob $
--             createReplicationJob
--
--         , requestDeleteServerCatalog $
--             deleteServerCatalog
--
--         , requestGetApp $
--             getApp
--
--         , requestDeleteAppReplicationConfiguration $
--             deleteAppReplicationConfiguration
--
--         , requestDisassociateConnector $
--             disassociateConnector
--
--         , requestNotifyAppValidationOutput $
--             notifyAppValidationOutput
--
--         , requestGetReplicationJobs $
--             getReplicationJobs
--
--         , requestStartOnDemandAppReplication $
--             startOnDemandAppReplication
--
--         , requestGetAppValidationOutput $
--             getAppValidationOutput
--
--         , requestGetAppReplicationConfiguration $
--             getAppReplicationConfiguration
--
--         , requestDeleteAppValidationConfiguration $
--             deleteAppValidationConfiguration
--
--         , requestImportServerCatalog $
--             importServerCatalog
--
--         , requestDeleteApp $
--             deleteApp
--
--         , requestUpdateApp $
--             updateApp
--
--         , requestDeleteAppLaunchConfiguration $
--             deleteAppLaunchConfiguration
--
--         , requestCreateApp $
--             createApp
--
--         , requestGetAppLaunchConfiguration $
--             getAppLaunchConfiguration
--
--         , requestUpdateReplicationJob $
--             updateReplicationJob
--
--         , requestDeleteReplicationJob $
--             deleteReplicationJob
--
--           ]

--     , testGroup "response"
--         [ responseGenerateChangeSet $
--             generateChangeSetResponse
--
--         , responseImportAppCatalog $
--             importAppCatalogResponse
--
--         , responseLaunchApp $
--             launchAppResponse
--
--         , responseGetAppValidationConfiguration $
--             getAppValidationConfigurationResponse
--
--         , responsePutAppReplicationConfiguration $
--             putAppReplicationConfigurationResponse
--
--         , responseGetConnectors $
--             getConnectorsResponse
--
--         , responseGenerateTemplate $
--             generateTemplateResponse
--
--         , responsePutAppValidationConfiguration $
--             putAppValidationConfigurationResponse
--
--         , responseStartOnDemandReplicationRun $
--             startOnDemandReplicationRunResponse
--
--         , responseTerminateApp $
--             terminateAppResponse
--
--         , responseListApps $
--             listAppsResponse
--
--         , responseGetReplicationRuns $
--             getReplicationRunsResponse
--
--         , responseGetServers $
--             getServersResponse
--
--         , responseStartAppReplication $
--             startAppReplicationResponse
--
--         , responsePutAppLaunchConfiguration $
--             putAppLaunchConfigurationResponse
--
--         , responseStopAppReplication $
--             stopAppReplicationResponse
--
--         , responseCreateReplicationJob $
--             createReplicationJobResponse
--
--         , responseDeleteServerCatalog $
--             deleteServerCatalogResponse
--
--         , responseGetApp $
--             getAppResponse
--
--         , responseDeleteAppReplicationConfiguration $
--             deleteAppReplicationConfigurationResponse
--
--         , responseDisassociateConnector $
--             disassociateConnectorResponse
--
--         , responseNotifyAppValidationOutput $
--             notifyAppValidationOutputResponse
--
--         , responseGetReplicationJobs $
--             getReplicationJobsResponse
--
--         , responseStartOnDemandAppReplication $
--             startOnDemandAppReplicationResponse
--
--         , responseGetAppValidationOutput $
--             getAppValidationOutputResponse
--
--         , responseGetAppReplicationConfiguration $
--             getAppReplicationConfigurationResponse
--
--         , responseDeleteAppValidationConfiguration $
--             deleteAppValidationConfigurationResponse
--
--         , responseImportServerCatalog $
--             importServerCatalogResponse
--
--         , responseDeleteApp $
--             deleteAppResponse
--
--         , responseUpdateApp $
--             updateAppResponse
--
--         , responseDeleteAppLaunchConfiguration $
--             deleteAppLaunchConfigurationResponse
--
--         , responseCreateApp $
--             createAppResponse
--
--         , responseGetAppLaunchConfiguration $
--             getAppLaunchConfigurationResponse
--
--         , responseUpdateReplicationJob $
--             updateReplicationJobResponse
--
--         , responseDeleteReplicationJob $
--             deleteReplicationJobResponse
--
--           ]
--     ]

-- Requests

requestGenerateChangeSet :: GenerateChangeSet -> TestTree
requestGenerateChangeSet =
  req
    "GenerateChangeSet"
    "fixture/GenerateChangeSet.yaml"

requestImportAppCatalog :: ImportAppCatalog -> TestTree
requestImportAppCatalog =
  req
    "ImportAppCatalog"
    "fixture/ImportAppCatalog.yaml"

requestLaunchApp :: LaunchApp -> TestTree
requestLaunchApp =
  req
    "LaunchApp"
    "fixture/LaunchApp.yaml"

requestGetAppValidationConfiguration :: GetAppValidationConfiguration -> TestTree
requestGetAppValidationConfiguration =
  req
    "GetAppValidationConfiguration"
    "fixture/GetAppValidationConfiguration.yaml"

requestPutAppReplicationConfiguration :: PutAppReplicationConfiguration -> TestTree
requestPutAppReplicationConfiguration =
  req
    "PutAppReplicationConfiguration"
    "fixture/PutAppReplicationConfiguration.yaml"

requestGetConnectors :: GetConnectors -> TestTree
requestGetConnectors =
  req
    "GetConnectors"
    "fixture/GetConnectors.yaml"

requestGenerateTemplate :: GenerateTemplate -> TestTree
requestGenerateTemplate =
  req
    "GenerateTemplate"
    "fixture/GenerateTemplate.yaml"

requestPutAppValidationConfiguration :: PutAppValidationConfiguration -> TestTree
requestPutAppValidationConfiguration =
  req
    "PutAppValidationConfiguration"
    "fixture/PutAppValidationConfiguration.yaml"

requestStartOnDemandReplicationRun :: StartOnDemandReplicationRun -> TestTree
requestStartOnDemandReplicationRun =
  req
    "StartOnDemandReplicationRun"
    "fixture/StartOnDemandReplicationRun.yaml"

requestTerminateApp :: TerminateApp -> TestTree
requestTerminateApp =
  req
    "TerminateApp"
    "fixture/TerminateApp.yaml"

requestListApps :: ListApps -> TestTree
requestListApps =
  req
    "ListApps"
    "fixture/ListApps.yaml"

requestGetReplicationRuns :: GetReplicationRuns -> TestTree
requestGetReplicationRuns =
  req
    "GetReplicationRuns"
    "fixture/GetReplicationRuns.yaml"

requestGetServers :: GetServers -> TestTree
requestGetServers =
  req
    "GetServers"
    "fixture/GetServers.yaml"

requestStartAppReplication :: StartAppReplication -> TestTree
requestStartAppReplication =
  req
    "StartAppReplication"
    "fixture/StartAppReplication.yaml"

requestPutAppLaunchConfiguration :: PutAppLaunchConfiguration -> TestTree
requestPutAppLaunchConfiguration =
  req
    "PutAppLaunchConfiguration"
    "fixture/PutAppLaunchConfiguration.yaml"

requestStopAppReplication :: StopAppReplication -> TestTree
requestStopAppReplication =
  req
    "StopAppReplication"
    "fixture/StopAppReplication.yaml"

requestCreateReplicationJob :: CreateReplicationJob -> TestTree
requestCreateReplicationJob =
  req
    "CreateReplicationJob"
    "fixture/CreateReplicationJob.yaml"

requestDeleteServerCatalog :: DeleteServerCatalog -> TestTree
requestDeleteServerCatalog =
  req
    "DeleteServerCatalog"
    "fixture/DeleteServerCatalog.yaml"

requestGetApp :: GetApp -> TestTree
requestGetApp =
  req
    "GetApp"
    "fixture/GetApp.yaml"

requestDeleteAppReplicationConfiguration :: DeleteAppReplicationConfiguration -> TestTree
requestDeleteAppReplicationConfiguration =
  req
    "DeleteAppReplicationConfiguration"
    "fixture/DeleteAppReplicationConfiguration.yaml"

requestDisassociateConnector :: DisassociateConnector -> TestTree
requestDisassociateConnector =
  req
    "DisassociateConnector"
    "fixture/DisassociateConnector.yaml"

requestNotifyAppValidationOutput :: NotifyAppValidationOutput -> TestTree
requestNotifyAppValidationOutput =
  req
    "NotifyAppValidationOutput"
    "fixture/NotifyAppValidationOutput.yaml"

requestGetReplicationJobs :: GetReplicationJobs -> TestTree
requestGetReplicationJobs =
  req
    "GetReplicationJobs"
    "fixture/GetReplicationJobs.yaml"

requestStartOnDemandAppReplication :: StartOnDemandAppReplication -> TestTree
requestStartOnDemandAppReplication =
  req
    "StartOnDemandAppReplication"
    "fixture/StartOnDemandAppReplication.yaml"

requestGetAppValidationOutput :: GetAppValidationOutput -> TestTree
requestGetAppValidationOutput =
  req
    "GetAppValidationOutput"
    "fixture/GetAppValidationOutput.yaml"

requestGetAppReplicationConfiguration :: GetAppReplicationConfiguration -> TestTree
requestGetAppReplicationConfiguration =
  req
    "GetAppReplicationConfiguration"
    "fixture/GetAppReplicationConfiguration.yaml"

requestDeleteAppValidationConfiguration :: DeleteAppValidationConfiguration -> TestTree
requestDeleteAppValidationConfiguration =
  req
    "DeleteAppValidationConfiguration"
    "fixture/DeleteAppValidationConfiguration.yaml"

requestImportServerCatalog :: ImportServerCatalog -> TestTree
requestImportServerCatalog =
  req
    "ImportServerCatalog"
    "fixture/ImportServerCatalog.yaml"

requestDeleteApp :: DeleteApp -> TestTree
requestDeleteApp =
  req
    "DeleteApp"
    "fixture/DeleteApp.yaml"

requestUpdateApp :: UpdateApp -> TestTree
requestUpdateApp =
  req
    "UpdateApp"
    "fixture/UpdateApp.yaml"

requestDeleteAppLaunchConfiguration :: DeleteAppLaunchConfiguration -> TestTree
requestDeleteAppLaunchConfiguration =
  req
    "DeleteAppLaunchConfiguration"
    "fixture/DeleteAppLaunchConfiguration.yaml"

requestCreateApp :: CreateApp -> TestTree
requestCreateApp =
  req
    "CreateApp"
    "fixture/CreateApp.yaml"

requestGetAppLaunchConfiguration :: GetAppLaunchConfiguration -> TestTree
requestGetAppLaunchConfiguration =
  req
    "GetAppLaunchConfiguration"
    "fixture/GetAppLaunchConfiguration.yaml"

requestUpdateReplicationJob :: UpdateReplicationJob -> TestTree
requestUpdateReplicationJob =
  req
    "UpdateReplicationJob"
    "fixture/UpdateReplicationJob.yaml"

requestDeleteReplicationJob :: DeleteReplicationJob -> TestTree
requestDeleteReplicationJob =
  req
    "DeleteReplicationJob"
    "fixture/DeleteReplicationJob.yaml"

-- Responses

responseGenerateChangeSet :: GenerateChangeSetResponse -> TestTree
responseGenerateChangeSet =
  res
    "GenerateChangeSetResponse"
    "fixture/GenerateChangeSetResponse.proto"
    sms
    (Proxy :: Proxy GenerateChangeSet)

responseImportAppCatalog :: ImportAppCatalogResponse -> TestTree
responseImportAppCatalog =
  res
    "ImportAppCatalogResponse"
    "fixture/ImportAppCatalogResponse.proto"
    sms
    (Proxy :: Proxy ImportAppCatalog)

responseLaunchApp :: LaunchAppResponse -> TestTree
responseLaunchApp =
  res
    "LaunchAppResponse"
    "fixture/LaunchAppResponse.proto"
    sms
    (Proxy :: Proxy LaunchApp)

responseGetAppValidationConfiguration :: GetAppValidationConfigurationResponse -> TestTree
responseGetAppValidationConfiguration =
  res
    "GetAppValidationConfigurationResponse"
    "fixture/GetAppValidationConfigurationResponse.proto"
    sms
    (Proxy :: Proxy GetAppValidationConfiguration)

responsePutAppReplicationConfiguration :: PutAppReplicationConfigurationResponse -> TestTree
responsePutAppReplicationConfiguration =
  res
    "PutAppReplicationConfigurationResponse"
    "fixture/PutAppReplicationConfigurationResponse.proto"
    sms
    (Proxy :: Proxy PutAppReplicationConfiguration)

responseGetConnectors :: GetConnectorsResponse -> TestTree
responseGetConnectors =
  res
    "GetConnectorsResponse"
    "fixture/GetConnectorsResponse.proto"
    sms
    (Proxy :: Proxy GetConnectors)

responseGenerateTemplate :: GenerateTemplateResponse -> TestTree
responseGenerateTemplate =
  res
    "GenerateTemplateResponse"
    "fixture/GenerateTemplateResponse.proto"
    sms
    (Proxy :: Proxy GenerateTemplate)

responsePutAppValidationConfiguration :: PutAppValidationConfigurationResponse -> TestTree
responsePutAppValidationConfiguration =
  res
    "PutAppValidationConfigurationResponse"
    "fixture/PutAppValidationConfigurationResponse.proto"
    sms
    (Proxy :: Proxy PutAppValidationConfiguration)

responseStartOnDemandReplicationRun :: StartOnDemandReplicationRunResponse -> TestTree
responseStartOnDemandReplicationRun =
  res
    "StartOnDemandReplicationRunResponse"
    "fixture/StartOnDemandReplicationRunResponse.proto"
    sms
    (Proxy :: Proxy StartOnDemandReplicationRun)

responseTerminateApp :: TerminateAppResponse -> TestTree
responseTerminateApp =
  res
    "TerminateAppResponse"
    "fixture/TerminateAppResponse.proto"
    sms
    (Proxy :: Proxy TerminateApp)

responseListApps :: ListAppsResponse -> TestTree
responseListApps =
  res
    "ListAppsResponse"
    "fixture/ListAppsResponse.proto"
    sms
    (Proxy :: Proxy ListApps)

responseGetReplicationRuns :: GetReplicationRunsResponse -> TestTree
responseGetReplicationRuns =
  res
    "GetReplicationRunsResponse"
    "fixture/GetReplicationRunsResponse.proto"
    sms
    (Proxy :: Proxy GetReplicationRuns)

responseGetServers :: GetServersResponse -> TestTree
responseGetServers =
  res
    "GetServersResponse"
    "fixture/GetServersResponse.proto"
    sms
    (Proxy :: Proxy GetServers)

responseStartAppReplication :: StartAppReplicationResponse -> TestTree
responseStartAppReplication =
  res
    "StartAppReplicationResponse"
    "fixture/StartAppReplicationResponse.proto"
    sms
    (Proxy :: Proxy StartAppReplication)

responsePutAppLaunchConfiguration :: PutAppLaunchConfigurationResponse -> TestTree
responsePutAppLaunchConfiguration =
  res
    "PutAppLaunchConfigurationResponse"
    "fixture/PutAppLaunchConfigurationResponse.proto"
    sms
    (Proxy :: Proxy PutAppLaunchConfiguration)

responseStopAppReplication :: StopAppReplicationResponse -> TestTree
responseStopAppReplication =
  res
    "StopAppReplicationResponse"
    "fixture/StopAppReplicationResponse.proto"
    sms
    (Proxy :: Proxy StopAppReplication)

responseCreateReplicationJob :: CreateReplicationJobResponse -> TestTree
responseCreateReplicationJob =
  res
    "CreateReplicationJobResponse"
    "fixture/CreateReplicationJobResponse.proto"
    sms
    (Proxy :: Proxy CreateReplicationJob)

responseDeleteServerCatalog :: DeleteServerCatalogResponse -> TestTree
responseDeleteServerCatalog =
  res
    "DeleteServerCatalogResponse"
    "fixture/DeleteServerCatalogResponse.proto"
    sms
    (Proxy :: Proxy DeleteServerCatalog)

responseGetApp :: GetAppResponse -> TestTree
responseGetApp =
  res
    "GetAppResponse"
    "fixture/GetAppResponse.proto"
    sms
    (Proxy :: Proxy GetApp)

responseDeleteAppReplicationConfiguration :: DeleteAppReplicationConfigurationResponse -> TestTree
responseDeleteAppReplicationConfiguration =
  res
    "DeleteAppReplicationConfigurationResponse"
    "fixture/DeleteAppReplicationConfigurationResponse.proto"
    sms
    (Proxy :: Proxy DeleteAppReplicationConfiguration)

responseDisassociateConnector :: DisassociateConnectorResponse -> TestTree
responseDisassociateConnector =
  res
    "DisassociateConnectorResponse"
    "fixture/DisassociateConnectorResponse.proto"
    sms
    (Proxy :: Proxy DisassociateConnector)

responseNotifyAppValidationOutput :: NotifyAppValidationOutputResponse -> TestTree
responseNotifyAppValidationOutput =
  res
    "NotifyAppValidationOutputResponse"
    "fixture/NotifyAppValidationOutputResponse.proto"
    sms
    (Proxy :: Proxy NotifyAppValidationOutput)

responseGetReplicationJobs :: GetReplicationJobsResponse -> TestTree
responseGetReplicationJobs =
  res
    "GetReplicationJobsResponse"
    "fixture/GetReplicationJobsResponse.proto"
    sms
    (Proxy :: Proxy GetReplicationJobs)

responseStartOnDemandAppReplication :: StartOnDemandAppReplicationResponse -> TestTree
responseStartOnDemandAppReplication =
  res
    "StartOnDemandAppReplicationResponse"
    "fixture/StartOnDemandAppReplicationResponse.proto"
    sms
    (Proxy :: Proxy StartOnDemandAppReplication)

responseGetAppValidationOutput :: GetAppValidationOutputResponse -> TestTree
responseGetAppValidationOutput =
  res
    "GetAppValidationOutputResponse"
    "fixture/GetAppValidationOutputResponse.proto"
    sms
    (Proxy :: Proxy GetAppValidationOutput)

responseGetAppReplicationConfiguration :: GetAppReplicationConfigurationResponse -> TestTree
responseGetAppReplicationConfiguration =
  res
    "GetAppReplicationConfigurationResponse"
    "fixture/GetAppReplicationConfigurationResponse.proto"
    sms
    (Proxy :: Proxy GetAppReplicationConfiguration)

responseDeleteAppValidationConfiguration :: DeleteAppValidationConfigurationResponse -> TestTree
responseDeleteAppValidationConfiguration =
  res
    "DeleteAppValidationConfigurationResponse"
    "fixture/DeleteAppValidationConfigurationResponse.proto"
    sms
    (Proxy :: Proxy DeleteAppValidationConfiguration)

responseImportServerCatalog :: ImportServerCatalogResponse -> TestTree
responseImportServerCatalog =
  res
    "ImportServerCatalogResponse"
    "fixture/ImportServerCatalogResponse.proto"
    sms
    (Proxy :: Proxy ImportServerCatalog)

responseDeleteApp :: DeleteAppResponse -> TestTree
responseDeleteApp =
  res
    "DeleteAppResponse"
    "fixture/DeleteAppResponse.proto"
    sms
    (Proxy :: Proxy DeleteApp)

responseUpdateApp :: UpdateAppResponse -> TestTree
responseUpdateApp =
  res
    "UpdateAppResponse"
    "fixture/UpdateAppResponse.proto"
    sms
    (Proxy :: Proxy UpdateApp)

responseDeleteAppLaunchConfiguration :: DeleteAppLaunchConfigurationResponse -> TestTree
responseDeleteAppLaunchConfiguration =
  res
    "DeleteAppLaunchConfigurationResponse"
    "fixture/DeleteAppLaunchConfigurationResponse.proto"
    sms
    (Proxy :: Proxy DeleteAppLaunchConfiguration)

responseCreateApp :: CreateAppResponse -> TestTree
responseCreateApp =
  res
    "CreateAppResponse"
    "fixture/CreateAppResponse.proto"
    sms
    (Proxy :: Proxy CreateApp)

responseGetAppLaunchConfiguration :: GetAppLaunchConfigurationResponse -> TestTree
responseGetAppLaunchConfiguration =
  res
    "GetAppLaunchConfigurationResponse"
    "fixture/GetAppLaunchConfigurationResponse.proto"
    sms
    (Proxy :: Proxy GetAppLaunchConfiguration)

responseUpdateReplicationJob :: UpdateReplicationJobResponse -> TestTree
responseUpdateReplicationJob =
  res
    "UpdateReplicationJobResponse"
    "fixture/UpdateReplicationJobResponse.proto"
    sms
    (Proxy :: Proxy UpdateReplicationJob)

responseDeleteReplicationJob :: DeleteReplicationJobResponse -> TestTree
responseDeleteReplicationJob =
  res
    "DeleteReplicationJobResponse"
    "fixture/DeleteReplicationJobResponse.proto"
    sms
    (Proxy :: Proxy DeleteReplicationJob)
