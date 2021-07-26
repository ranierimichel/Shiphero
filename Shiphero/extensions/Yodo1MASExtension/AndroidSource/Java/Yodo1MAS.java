package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.RunnerActivity;
import com.yoyogames.runner.RunnerJNILib;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import android.content.DialogInterface;
import androidx.annotation.NonNull;

import com.yodo1.mas.*;
import com.yodo1.mas.ads.*;
import com.yodo1.mas.error.*;
import com.yodo1.mas.event.*;


public class Yodo1MAS extends RunnerSocial {
  private static final int Yodo1MAS_ASyncEvent = 2909;
  private static final int EVENT_OTHER_SOCIAL = 70;
  private String appKey = RunnerActivity.CurrentActivity.mYYPrefs.getString("com.yodo1mas.APP_KEY");
  private String resultInit;
  private static final String SDKNAME = "Yodo1MAS_SDK:";
  private static final String SDKVER = "v4.0.4.1";

  public void yodo1Initialize(){

      Log.i("yoyo",SDKNAME+" Initializing...");
      Yodo1Mas.getInstance().init(RunnerActivity.CurrentActivity, appKey, new Yodo1Mas.InitListener() {
          @Override
          public void onMasInitSuccessful() {
            Log.i("yoyo",SDKNAME+ " Initialized Successfully App Id: "+appKey+" SDK version: "+SDKVER);
            resultInit = "OK";
          }

        @Override
        public void onMasInitFailed(@NonNull Yodo1MasError error) {
          Log.i("yoyo",SDKNAME+ " ERROR:"+error);
          resultInit = "ERROR";
        }
      });
  }

  //legal
  public void yodo1GDPR(String agree){
    boolean l_agree = Boolean.parseBoolean(agree);
    Yodo1Mas.getInstance().setGDPR(l_agree);
    if(l_agree){
      Log.i("yoyo",SDKNAME+" CCPA was agreed");
    }else{
      Log.i("yoyo",SDKNAME+" CCPA was disagreed");
    }
  }

  public void yodo1COPPA(String agree){
    boolean l_agree = Boolean.parseBoolean(agree);
    Yodo1Mas.getInstance().setCOPPA(l_agree);
      if(l_agree){
        Log.i("yoyo",SDKNAME+" COPPA was agreed");
      }else{
        Log.i("yoyo",SDKNAME+" COPPA was disagreed");
      }
  }

  public void yodo1CCPA(String agree){
    boolean l_agree = Boolean.parseBoolean(agree);
    Yodo1Mas.getInstance().setCCPA(l_agree);
    if(l_agree){
      Log.i("yoyo",SDKNAME+" CCPA was agreed");
    }else{
      Log.i("yoyo",SDKNAME+" CCPA was disagreed");
    }
  }

  // INTERSTITIAL
  public String yodo1InterstitialIsReady(){
    boolean readyAd = Yodo1Mas.getInstance().isInterstitialAdLoaded();
    if(readyAd){
      return "INTERSTITIAL_READY";
    }else{
      return "INTERSTITIAL_NOTREADY";
    }
  }

  public void yodo1ShowInterstitialAd() {
    Yodo1Mas.getInstance().setInterstitialListener(new Yodo1Mas.InterstitialListener() {
        @Override
        public void onAdClosed(@NonNull Yodo1MasAdEvent event) {
            String message = " Interstitial Closed";
            Log.i("yoyo",SDKNAME + " " + message);
            int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
            RunnerJNILib.DsMapAddString( dsMapIndex, "type", "yodo1mas_interstitialclosed" );
            RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",Yodo1MAS_ASyncEvent);
            RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
        }

        @Override
        public void onAdOpened(@NonNull Yodo1MasAdEvent event) {
            String message = " Interstitial Opened";
            Log.i("yoyo",SDKNAME + " " + message);
            int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
            RunnerJNILib.DsMapAddString( dsMapIndex, "type", "yodo1mas_interstitialopened" );
            RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",Yodo1MAS_ASyncEvent);
            RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
        }

        @Override
        public void onAdError(@NonNull Yodo1MasAdEvent event, @NonNull Yodo1MasError error) {
            String message = " Interstitial Error, adErrorCode: " + error;
            Log.i("yoyo",SDKNAME + " " + message);
            int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
            RunnerJNILib.DsMapAddString( dsMapIndex, "type", "yodo1mas_interstitialerror" );
            RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",Yodo1MAS_ASyncEvent);
            RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
        }
    });
    boolean isLoaded = Yodo1Mas.getInstance().isInterstitialAdLoaded();

    if(isLoaded){
      Yodo1Mas.getInstance().showInterstitialAd(RunnerActivity.CurrentActivity);
      Log.i("yoyo", SDKNAME + " Interstitial ready");
    }else{
      Log.i("yoyo", SDKNAME + " Interstitial is not ready");
    }
  }

  //Rewarded
    public String yodo1RewardedVideoIsReady(){
      boolean readyAd = Yodo1Mas.getInstance().isBannerAdLoaded();
      if(readyAd){
        return "INTERSTITIAL_READY";
      }else{
        return "INTERSTITIAL_NOTREADY";
      }
    }

  public void yodo1ShowRewardedVideoAd() {
    Yodo1Mas.getInstance().setRewardListener(new Yodo1Mas.RewardListener() {
        @Override
        public void onAdClosed(@NonNull Yodo1MasAdEvent event) {
          String message = " Rewarded closed";
          Log.i("yoyo",SDKNAME + " " + message);
          int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
          RunnerJNILib.DsMapAddString( dsMapIndex, "type", "yodo1mas_videoclosed" );
          RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",Yodo1MAS_ASyncEvent);
          RunnerJNILib.DsMapAddDouble( dsMapIndex,"isFinished",0);
          RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
        }

        @Override
        public void onAdvertRewardEarned(@NonNull Yodo1MasAdEvent event) {
            String message = " Rewarded Earned";
            Log.i("yoyo",SDKNAME + " " + message);
            int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
            RunnerJNILib.DsMapAddString( dsMapIndex, "type", "yodo1mas_videoclosed" );
            RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",Yodo1MAS_ASyncEvent);
            RunnerJNILib.DsMapAddDouble( dsMapIndex,"isFinished",1);
            RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
        }

        @Override
        public void onAdOpened(@NonNull Yodo1MasAdEvent event) {
            String message = " Rewarded Opened";
            Log.i("yoyo",SDKNAME + " " + message);
            int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
            RunnerJNILib.DsMapAddString( dsMapIndex, "type", "yodo1mas_videoshow" );
            RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",Yodo1MAS_ASyncEvent);
            RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
        }

        @Override
        public void onAdError(@NonNull Yodo1MasAdEvent event, @NonNull Yodo1MasError error) {
            String message = " Rewarded Error: " + error;
            Log.i("yoyo",SDKNAME + " " + message);
            int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
            RunnerJNILib.DsMapAddString( dsMapIndex, "type", "yodo1mas_videoshowfailed" );
            RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",Yodo1MAS_ASyncEvent);
            RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
        }
    });

    boolean isLoaded = Yodo1Mas.getInstance().isRewardedAdLoaded();

    if(isLoaded){
      Yodo1Mas.getInstance().showRewardedAd(RunnerActivity.CurrentActivity);
      Log.i("yoyo",SDKNAME + " Showing Rewarded");
    }else{
      Log.i("yoyo",SDKNAME + " Rewarded is not ready");
    }

  }

}
