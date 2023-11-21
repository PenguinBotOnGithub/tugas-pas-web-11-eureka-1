<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('makanan_kucings', function (Blueprint $table) {
            $table->id();
            $table->string("nama", 256);
            $table->string("disukai");
            $table->double("popularitas", null, null, true);
            $table->integer("harga");
            $table->date("terakhir_beli");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('makanan_kucings');
    }
};
